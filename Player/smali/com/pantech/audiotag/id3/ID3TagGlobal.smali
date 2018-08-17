.class public Lcom/pantech/audiotag/id3/ID3TagGlobal;
.super Ljava/lang/Object;
.source "ID3TagGlobal.java"


# static fields
.field private static AUDIO_START:J = 0x0L

.field public static final CODE_ERROR:I = -0x1

.field public static final CODE_ERROR_APIC:I = -0x7d0

.field public static final CODE_ERROR_APIC_DESCRIPTION:I = -0x7d3

.field public static final CODE_ERROR_APIC_ENCODING:I = -0x7d1

.field public static final CODE_ERROR_APIC_MIMETYPE:I = -0x7d2

.field public static final CODE_ERROR_AUDIO_POSITION:I = -0x1b58

.field public static final CODE_ERROR_FIND_FRAME:I = -0xc8

.field public static final CODE_ERROR_FRAME_FLAG:I = -0x1f40

.field public static final CODE_ERROR_OPEN_FILE:I = -0x1770

.field public static final CODE_ERROR_READ:I = -0x1

.field public static final CODE_ERROR_READ_END:I = -0x1388

.field public static final CODE_ERROR_READ_FRAME:I = -0x64

.field public static final CODE_ERROR_READ_HEADER:I = -0xa

.field public static final CODE_ERROR_RESULT:I = -0x1

.field public static final CODE_ERROR_SYLT:I = -0xbb8

.field public static final CODE_ERROR_SYLT_CONTENTTYPE:I = -0xbbb

.field public static final CODE_ERROR_SYLT_DESCRIPTION:I = -0xbbc

.field public static final CODE_ERROR_SYLT_ENCODING:I = -0xbb9

.field public static final CODE_ERROR_SYLT_TIMESTAMP:I = -0xbba

.field public static final CODE_ERROR_TEXT:I = -0xfa0

.field public static final CODE_ERROR_TEXT_ENCODING:I = -0xfa2

.field public static final CODE_ERROR_TEXT_TEXT:I = -0xfa1

.field public static final CODE_ERROR_USLT:I = -0x3e8

.field public static final CODE_ERROR_USLT_DESCRIPTION:I = -0x3eb

.field public static final CODE_ERROR_USLT_ENCODING:I = -0x3ea

.field public static final CODE_ERROR_USLT_LYRICS:I = -0x3e9

.field public static final CODE_ERROR_V24_FRAME_CHECK:I = -0x2328

.field public static final CODE_ERROR_WRITE:I = -0x1

.field public static final CODE_OK:I = 0x0

.field public static final CODE_OK_APIC:I = 0x0

.field public static final CODE_OK_READ:I = 0x0

.field public static final CODE_OK_READ_END:I = 0x0

.field public static final CODE_OK_RESULT:I = 0x0

.field public static final CODE_OK_SYLT:I = 0x0

.field public static final CODE_OK_TEXT:I = 0x0

.field public static final CODE_OK_USLT:I = 0x0

.field public static final CODE_OK_WRITE:I = 0x0

.field private static FRAMES_SIZE:J = 0x0L

.field private static HEADER_SIZE:J = 0x0L

.field public static final ID3_TEXT_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final ID3_V1_TAG_SIZE:I = 0x7d

.field private static MP3V1VERSION:I = 0x0

.field private static MP3VERSION:I = 0x0

.field public static final MP3_VERSION_1_0:I = 0x5

.field public static final MP3_VERSION_1_1:I = 0x6

.field public static final MP3_VERSION_2_0:I = 0x0

.field public static final MP3_VERSION_2_1:I = 0x1

.field public static final MP3_VERSION_2_2:I = 0x2

.field public static final MP3_VERSION_2_3:I = 0x3

.field public static final MP3_VERSION_2_4:I = 0x4

.field private static PADDING_SIZE:J = 0x0L

.field private static TAG_DATA_SIZE:J = 0x0L

.field private static TYPE:I = 0x0

.field private static UNSYNCHRONIZATION:Z = false

.field private static V1_TAG_AVAILABLE:Z = false

.field private static V2_TAG_AVAILABLE:Z = false

.field public static final WRITE_TYPE_V1:I = 0x100

.field public static final WRITE_TYPE_V2:I = 0x1

.field public static final WRITE_TYPE_V2_OVERWRITE_V1:I = 0x10

.field private static iTUNES_HACKFILE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 100
    sput-boolean v2, Lcom/pantech/audiotag/id3/ID3TagGlobal;->UNSYNCHRONIZATION:Z

    .line 101
    sput v3, Lcom/pantech/audiotag/id3/ID3TagGlobal;->MP3VERSION:I

    .line 102
    sput v3, Lcom/pantech/audiotag/id3/ID3TagGlobal;->MP3V1VERSION:I

    .line 107
    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->TAG_DATA_SIZE:J

    .line 112
    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->FRAMES_SIZE:J

    .line 117
    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->HEADER_SIZE:J

    .line 122
    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->AUDIO_START:J

    .line 127
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->PADDING_SIZE:J

    .line 132
    sput-boolean v2, Lcom/pantech/audiotag/id3/ID3TagGlobal;->V2_TAG_AVAILABLE:Z

    .line 133
    sput-boolean v2, Lcom/pantech/audiotag/id3/ID3TagGlobal;->V1_TAG_AVAILABLE:Z

    .line 138
    sput-boolean v2, Lcom/pantech/audiotag/id3/ID3TagGlobal;->iTUNES_HACKFILE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioStartPos()J
    .registers 2

    .prologue
    .line 208
    sget-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->AUDIO_START:J

    return-wide v0
.end method

.method public static getFrameSize()J
    .registers 2

    .prologue
    .line 188
    sget-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->FRAMES_SIZE:J

    return-wide v0
.end method

.method public static getGetType()I
    .registers 1

    .prologue
    .line 148
    sget v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->TYPE:I

    return v0
.end method

.method public static getHeaderSize()J
    .registers 2

    .prologue
    .line 198
    sget-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->HEADER_SIZE:J

    return-wide v0
.end method

.method public static getMP3V1Version()I
    .registers 1

    .prologue
    .line 248
    sget v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->MP3V1VERSION:I

    return v0
.end method

.method public static getMP3Version()I
    .registers 1

    .prologue
    .line 168
    sget v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->MP3VERSION:I

    return v0
.end method

.method public static getPaddingSize()J
    .registers 2

    .prologue
    .line 218
    sget-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->PADDING_SIZE:J

    return-wide v0
.end method

.method public static getTagDataSize()J
    .registers 2

    .prologue
    .line 178
    sget-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->TAG_DATA_SIZE:J

    return-wide v0
.end method

.method public static getUnsynchronization()Z
    .registers 1

    .prologue
    .line 158
    sget-boolean v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->UNSYNCHRONIZATION:Z

    return v0
.end method

.method public static getV1TagAvailable()Z
    .registers 1

    .prologue
    .line 238
    sget-boolean v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->V1_TAG_AVAILABLE:Z

    return v0
.end method

.method public static getV2TagAvailable()Z
    .registers 1

    .prologue
    .line 228
    sget-boolean v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->V2_TAG_AVAILABLE:Z

    return v0
.end method

.method public static getiTunesHackFile()Z
    .registers 1

    .prologue
    .line 258
    sget-boolean v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->iTUNES_HACKFILE:Z

    return v0
.end method

.method public static resetValues()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 263
    sput-boolean v2, Lcom/pantech/audiotag/id3/ID3TagGlobal;->UNSYNCHRONIZATION:Z

    .line 264
    sput v3, Lcom/pantech/audiotag/id3/ID3TagGlobal;->MP3VERSION:I

    .line 265
    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->TAG_DATA_SIZE:J

    .line 266
    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->FRAMES_SIZE:J

    .line 267
    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->HEADER_SIZE:J

    .line 268
    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->AUDIO_START:J

    .line 269
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->PADDING_SIZE:J

    .line 270
    sput-boolean v2, Lcom/pantech/audiotag/id3/ID3TagGlobal;->V2_TAG_AVAILABLE:Z

    .line 271
    sput-boolean v2, Lcom/pantech/audiotag/id3/ID3TagGlobal;->V1_TAG_AVAILABLE:Z

    .line 272
    sput v3, Lcom/pantech/audiotag/id3/ID3TagGlobal;->MP3V1VERSION:I

    .line 273
    sput-boolean v2, Lcom/pantech/audiotag/id3/ID3TagGlobal;->iTUNES_HACKFILE:Z

    .line 274
    return-void
.end method

.method public static setAudioStartPos(J)V
    .registers 2
    .param p0, "audioStartPos"    # J

    .prologue
    .line 203
    sput-wide p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->AUDIO_START:J

    .line 204
    return-void
.end method

.method public static setFrameSize(J)V
    .registers 2
    .param p0, "size"    # J

    .prologue
    .line 183
    sput-wide p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->FRAMES_SIZE:J

    .line 184
    return-void
.end method

.method public static setGetType(I)V
    .registers 1
    .param p0, "type"    # I

    .prologue
    .line 143
    sput p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->TYPE:I

    .line 144
    return-void
.end method

.method public static setHeaderSize(J)V
    .registers 2
    .param p0, "size"    # J

    .prologue
    .line 193
    sput-wide p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->HEADER_SIZE:J

    .line 194
    return-void
.end method

.method public static setMP3V1Version(I)V
    .registers 1
    .param p0, "version"    # I

    .prologue
    .line 243
    sput p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->MP3V1VERSION:I

    .line 244
    return-void
.end method

.method public static setMP3Version(I)V
    .registers 1
    .param p0, "version"    # I

    .prologue
    .line 163
    sput p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->MP3VERSION:I

    .line 164
    return-void
.end method

.method public static setPaddingSize(J)V
    .registers 2
    .param p0, "size"    # J

    .prologue
    .line 213
    sput-wide p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->PADDING_SIZE:J

    .line 214
    return-void
.end method

.method public static setTagDataSize(J)V
    .registers 2
    .param p0, "size"    # J

    .prologue
    .line 173
    sput-wide p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->TAG_DATA_SIZE:J

    .line 174
    return-void
.end method

.method public static setUnsynchronization(Z)V
    .registers 1
    .param p0, "unsync"    # Z

    .prologue
    .line 153
    sput-boolean p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->UNSYNCHRONIZATION:Z

    .line 154
    return-void
.end method

.method public static setV1TagAvailable(Z)V
    .registers 1
    .param p0, "tagOK"    # Z

    .prologue
    .line 233
    sput-boolean p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->V1_TAG_AVAILABLE:Z

    .line 234
    return-void
.end method

.method public static setV2TagAvailable(Z)V
    .registers 1
    .param p0, "tagOK"    # Z

    .prologue
    .line 223
    sput-boolean p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->V2_TAG_AVAILABLE:Z

    .line 224
    return-void
.end method

.method public static setiTunesHackFile(Z)V
    .registers 1
    .param p0, "isHackFile"    # Z

    .prologue
    .line 253
    sput-boolean p0, Lcom/pantech/audiotag/id3/ID3TagGlobal;->iTUNES_HACKFILE:Z

    .line 254
    return-void
.end method
