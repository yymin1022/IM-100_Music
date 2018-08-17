.class public Lcom/pantech/app/music/common/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/common/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPA:I = 0xb

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xc

.field public static final FILE_TYPE_AK3G:I = 0xca

.field public static final FILE_TYPE_AK3GA:I = 0x12f

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x23

.field public static final FILE_TYPE_DCFA:I = 0x12d

.field public static final FILE_TYPE_DCFV:I = 0xc9

.field public static final FILE_TYPE_DIVX:I = 0x1f

.field public static final FILE_TYPE_DTS:I = 0x12c

.field public static final FILE_TYPE_EC3:I = 0x10

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_FLV:I = 0xce

.field public static final FILE_TYPE_GIF:I = 0x21

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0x12

.field public static final FILE_TYPE_JPEG:I = 0x20

.field public static final FILE_TYPE_K3G:I = 0xcd

.field public static final FILE_TYPE_K3GA:I = 0x12e

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0x10

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_ODFA:I = 0x130

.field public static final FILE_TYPE_ODFV:I = 0xcb

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PCM:I = 0xf

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x22

.field public static final FILE_TYPE_QCP:I = 0xd

.field public static final FILE_TYPE_SKM:I = 0xcc

.field public static final FILE_TYPE_SMF:I = 0x11

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x24

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBMA:I = 0xe

.field public static final FILE_TYPE_WEBP:I = 0x25

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_AUDIO_FILE_TYPE2:I = 0x12c

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x20

.field private static final FIRST_MIDI_FILE_TYPE:I = 0x10

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x10

.field private static final LAST_AUDIO_FILE_TYPE2:I = 0x130

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x25

.field private static final LAST_MIDI_FILE_TYPE:I = 0x12

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1f

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xce

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/music/common/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x29

    const/16 v6, 0x11

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x2

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/common/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 155
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    const-string v0, "M4A"

    const-string v1, "audio/mp4"

    invoke-static {v0, v3, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    const-string v0, "WAV"

    const/16 v1, 0xf

    const-string v2, "audio/wav"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    const-string v0, "DIVX"

    const/16 v1, 0x1f

    const-string v2, "video/divx"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    const-string v0, "QCP"

    const/16 v1, 0xd

    const-string v2, "audio/qcelp"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    const-string v0, "OGG"

    const-string v1, "audio/ogg"

    invoke-static {v0, v4, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    const-string v0, "OGG"

    const-string v1, "application/ogg"

    invoke-static {v0, v4, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    const-string v0, "WEBM"

    const/16 v1, 0xe

    const-string v2, "audio/webm"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    const-string v0, "AAC"

    const-string v1, "audio/aac"

    invoke-static {v0, v5, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    const-string v0, "AAC"

    const-string v1, "audio/aac-adts"

    invoke-static {v0, v5, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    const-string v0, "MKA"

    const/16 v1, 0x9

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    const-string v0, "MIDI"

    const/16 v1, 0x10

    const-string v2, "audio/midi"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    const-string v0, "SMF"

    const-string v1, "audio/sp-midi"

    invoke-static {v0, v6, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    const-string v0, "IMY"

    const/16 v1, 0x12

    const-string v2, "audio/imelody"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    const-string v0, "MP4A"

    const-string v1, "audio/mp4"

    invoke-static {v0, v3, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    const-string v0, "3GPA"

    const/16 v1, 0xb

    const-string v2, "audio/3gpp"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    const-string v0, "SPMID"

    const-string v1, "audio/sp-midi"

    invoke-static {v0, v6, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    const-string v0, "AK3G"

    const/16 v1, 0x12f

    const-string v2, "audio/ak3g"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    const-string v0, "K3G"

    const/16 v1, 0x12e

    const-string v2, "audio/k3g"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    const-string v0, "M3U"

    const-string v1, "audio/x-mpegurl"

    invoke-static {v0, v7, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    const-string v0, "M3U"

    const-string v1, "application/x-mpegurl"

    invoke-static {v0, v7, v1}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    const-string v0, "PLS"

    const/16 v1, 0x2a

    const-string v2, "audio/x-scpls"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    const-string v0, "WPL"

    const/16 v1, 0x2b

    const-string v2, "application/vnd.ms-wpl"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    const-string v0, "FL"

    const/16 v1, 0x33

    const-string v2, "application/x-android-drm-fl"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    const-string v0, "FLAC"

    const/16 v1, 0xa

    const-string v2, "audio/flac"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    const-string v0, "DCF"

    const/16 v1, 0x12d

    const-string v2, "audio/x-mp3"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    const-string v0, "ODF"

    const/16 v1, 0x130

    const-string v2, "audio/odf"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    const-string v0, "DCF"

    const/16 v1, 0x12d

    const-string v2, "audio/skm"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 150
    sget-object v0, Lcom/pantech/app/music/common/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/pantech/app/music/common/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p0}, Lcom/pantech/app/music/common/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public static getFileExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-object v1, Lcom/pantech/app/music/common/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/common/MediaFile$MediaFileType;

    .line 199
    .local v0, "type":Lcom/pantech/app/music/common/MediaFile$MediaFileType;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/pantech/app/music/common/MediaFile$MediaFileType;->fileExtention:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 201
    :cond_12
    const-string v1, "<unknown>"

    .line 204
    :goto_14
    return-object v1

    :cond_15
    iget-object v1, v0, Lcom/pantech/app/music/common/MediaFile$MediaFileType;->fileExtention:Ljava/lang/String;

    goto :goto_14
.end method
