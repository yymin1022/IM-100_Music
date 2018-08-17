.class public Lcom/pantech/app/music/common/MP3Header;
.super Ljava/lang/Object;
.source "MP3Header.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/common/MP3Header$1;,
        Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;,
        Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MP3Header"

.field private static final kMask:I = -0x1f340


# instance fields
.field private bithdr:J

.field public intBitRate:I

.field public intFrameSize:I

.field public intFrequency:I

.field public lngFileSize:J

.field private mFrameInfo:Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;

.field private mHeaderType:Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;-><init>(Lcom/pantech/app/music/common/MP3Header;Lcom/pantech/app/music/common/MP3Header$1;)V

    iput-object v0, p0, Lcom/pantech/app/music/common/MP3Header;->mHeaderType:Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;

    .line 25
    new-instance v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;-><init>(Lcom/pantech/app/music/common/MP3Header;Lcom/pantech/app/music/common/MP3Header$1;)V

    iput-object v0, p0, Lcom/pantech/app/music/common/MP3Header;->mFrameInfo:Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;

    .line 26
    return-void
.end method

.method private U32([B)J
    .registers 4
    .param p1, "ptr"    # [B

    .prologue
    .line 236
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private getMP3Frame(JLcom/pantech/app/music/common/MP3Header$MP3HeaderType;Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;)Z
    .registers 20
    .param p1, "header"    # J
    .param p3, "headerType"    # Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    .param p4, "frameinfo"    # Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;

    .prologue
    .line 130
    const-wide/32 v10, -0x200000

    and-long v10, v10, p1

    const-wide/32 v12, -0x200000

    cmp-long v10, v10, v12

    if-eqz v10, :cond_e

    .line 131
    const/4 v10, 0x0

    .line 228
    :goto_d
    return v10

    .line 134
    :cond_e
    const/16 v10, 0x13

    shr-long v10, p1, v10

    const-wide/16 v12, 0x3

    and-long/2addr v10, v12

    long-to-int v10, v10

    move-object/from16 v0, p3

    iput v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->frameVer:I

    .line 136
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->frameVer:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_23

    .line 137
    const/4 v10, 0x0

    goto :goto_d

    .line 140
    :cond_23
    const/16 v10, 0x11

    shr-long v10, p1, v10

    const-wide/16 v12, 0x3

    and-long/2addr v10, v12

    long-to-int v10, v10

    move-object/from16 v0, p3

    iput v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->layerID:I

    .line 142
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->layerID:I

    if-nez v10, :cond_37

    .line 143
    const/4 v10, 0x0

    goto :goto_d

    .line 146
    :cond_37
    const/16 v10, 0xc

    shr-long v10, p1, v10

    const-wide/16 v12, 0xf

    and-long/2addr v10, v12

    long-to-int v10, v10

    move-object/from16 v0, p3

    iput v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->brIndex:I

    .line 148
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->brIndex:I

    if-eqz v10, :cond_51

    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->brIndex:I

    const/16 v11, 0xf

    if-ne v10, v11, :cond_53

    .line 150
    :cond_51
    const/4 v10, 0x0

    goto :goto_d

    .line 153
    :cond_53
    const/16 v10, 0xa

    shr-long v10, p1, v10

    const-wide/16 v12, 0x3

    and-long/2addr v10, v12

    long-to-int v10, v10

    move-object/from16 v0, p3

    iput v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->srIndex:I

    .line 155
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->srIndex:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_68

    .line 156
    const/4 v10, 0x0

    goto :goto_d

    .line 159
    :cond_68
    const/4 v10, 0x3

    new-array v7, v10, [I

    fill-array-data v7, :array_12a

    .line 160
    .local v7, "kSamplingRateV1":[I
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->srIndex:I

    aget v9, v7, v10

    .line 161
    .local v9, "sampling_rate":I
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->frameVer:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_ba

    .line 162
    div-int/lit8 v9, v9, 0x2

    .line 167
    :cond_7d
    :goto_7d
    const/16 v10, 0x9

    shr-long v10, p1, v10

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    long-to-int v8, v10

    .line 169
    .local v8, "padding":I
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->layerID:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_cc

    .line 172
    const/16 v10, 0xe

    new-array v3, v10, [I

    fill-array-data v3, :array_134

    .line 177
    .local v3, "kBitrateV1":[I
    const/16 v10, 0xe

    new-array v6, v10, [I

    fill-array-data v6, :array_154

    .line 182
    .local v6, "kBitrateV2":[I
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->frameVer:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c3

    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->brIndex:I

    add-int/lit8 v10, v10, -0x1

    aget v2, v3, v10

    .line 187
    .local v2, "bitrate":I
    :goto_a9
    move-object/from16 v0, p4

    iput v2, v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;->bitrate:I

    .line 189
    mul-int/lit16 v10, v2, 0x2ee0

    div-int/2addr v10, v9

    add-int/2addr v10, v8

    mul-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p4

    iput v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;->frameSize:I

    .line 228
    .end local v3    # "kBitrateV1":[I
    :goto_b7
    const/4 v10, 0x1

    goto/16 :goto_d

    .line 163
    .end local v2    # "bitrate":I
    .end local v6    # "kBitrateV2":[I
    .end local v8    # "padding":I
    :cond_ba
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->frameVer:I

    if-nez v10, :cond_7d

    .line 164
    div-int/lit8 v9, v9, 0x4

    goto :goto_7d

    .line 182
    .restart local v3    # "kBitrateV1":[I
    .restart local v6    # "kBitrateV2":[I
    .restart local v8    # "padding":I
    :cond_c3
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->brIndex:I

    add-int/lit8 v10, v10, -0x1

    aget v2, v6, v10

    goto :goto_a9

    .line 193
    .end local v3    # "kBitrateV1":[I
    .end local v6    # "kBitrateV2":[I
    :cond_cc
    const/16 v10, 0xe

    new-array v4, v10, [I

    fill-array-data v4, :array_174

    .line 198
    .local v4, "kBitrateV1L2":[I
    const/16 v10, 0xe

    new-array v5, v10, [I

    fill-array-data v5, :array_194

    .line 203
    .local v5, "kBitrateV1L3":[I
    const/16 v10, 0xe

    new-array v6, v10, [I

    fill-array-data v6, :array_1b4

    .line 209
    .restart local v6    # "kBitrateV2":[I
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->frameVer:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_116

    .line 210
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->layerID:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10d

    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->brIndex:I

    add-int/lit8 v10, v10, -0x1

    aget v2, v4, v10

    .line 219
    .restart local v2    # "bitrate":I
    :goto_f7
    move-object/from16 v0, p4

    iput v2, v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;->bitrate:I

    .line 221
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->frameVer:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_11f

    .line 222
    const v10, 0x23280

    mul-int/2addr v10, v2

    div-int/2addr v10, v9

    add-int/2addr v10, v8

    move-object/from16 v0, p4

    iput v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;->frameSize:I

    goto :goto_b7

    .line 210
    .end local v2    # "bitrate":I
    :cond_10d
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->brIndex:I

    add-int/lit8 v10, v10, -0x1

    aget v2, v5, v10

    goto :goto_f7

    .line 216
    :cond_116
    move-object/from16 v0, p3

    iget v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->brIndex:I

    add-int/lit8 v10, v10, -0x1

    aget v2, v6, v10

    .restart local v2    # "bitrate":I
    goto :goto_f7

    .line 225
    :cond_11f
    const v10, 0x11940

    mul-int/2addr v10, v2

    div-int/2addr v10, v9

    add-int/2addr v10, v8

    move-object/from16 v0, p4

    iput v10, v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;->frameSize:I

    goto :goto_b7

    .line 159
    :array_12a
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    .line 172
    :array_134
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    .line 177
    :array_154
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    .line 193
    :array_174
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    .line 198
    :array_194
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    .line 203
    :array_1b4
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method


# virtual methods
.method public ReadMP3Information(Ljava/lang/String;)Z
    .registers 30
    .param p1, "FileName"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ReadMP3Information :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :try_start_1c
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v21, "r"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_c1

    .line 39
    .local v12, "raf":Ljava/io/RandomAccessFile;
    :try_start_27
    new-instance v18, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;-><init>(Lcom/pantech/app/music/common/MP3Header;Lcom/pantech/app/music/common/MP3Header$1;)V

    .line 40
    .local v18, "tmpframeInfo":Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;
    new-instance v19, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;-><init>(Lcom/pantech/app/music/common/MP3Header;Lcom/pantech/app/music/common/MP3Header$1;)V

    .line 43
    .local v19, "tmpheaderType":Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pantech/app/music/common/MP3Header;->lngFileSize:J

    .line 45
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v6, v0, [B

    .line 47
    .local v6, "bytHeader":[B
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v13, v0, [B

    .line 48
    .local v13, "tmp":[B
    const/4 v10, 0x0

    .line 51
    .local v10, "intPos":I
    invoke-static {v12}, Lcom/pantech/app/music/common/MP3ID3ParamUtil;->skipID3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v21

    if-eqz v21, :cond_91

    .line 52
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v10, v0

    .line 53
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MP3ID3ParamUtil.skipID3Tag "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " intPos : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_91
    move v9, v10

    .line 56
    .local v9, "initialPos":I
    const/16 v20, 0x0

    .line 57
    .local v20, "valid":Z
    const-wide/16 v14, 0x0

    .line 59
    .local v14, "test_header":J
    :cond_96
    const/high16 v21, 0x20000

    add-int v21, v21, v9

    move/from16 v0, v21

    if-lt v10, v0, :cond_e1

    .line 61
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "giving up at offset"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_b8
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_bb} :catch_1ed
    .catchall {:try_start_27 .. :try_end_bb} :catchall_225

    .line 114
    const/16 v21, 0x1

    .line 120
    :try_start_bd
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_26c

    .line 125
    .end local v6    # "bytHeader":[B
    .end local v9    # "initialPos":I
    .end local v10    # "intPos":I
    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .end local v13    # "tmp":[B
    .end local v14    # "test_header":J
    .end local v18    # "tmpframeInfo":Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;
    .end local v19    # "tmpheaderType":Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    .end local v20    # "valid":Z
    :goto_c0
    return v21

    .line 34
    :catch_c1
    move-exception v7

    .line 35
    .local v7, "e":Ljava/lang/Exception;
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ReadMP3Information : File Not Found"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/16 v21, 0x0

    goto :goto_c0

    .line 65
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "bytHeader":[B
    .restart local v9    # "initialPos":I
    .restart local v10    # "intPos":I
    .restart local v12    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "tmp":[B
    .restart local v14    # "test_header":J
    .restart local v18    # "tmpframeInfo":Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;
    .restart local v19    # "tmpheaderType":Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    .restart local v20    # "valid":Z
    :cond_e1
    int-to-long v0, v10

    move-wide/from16 v22, v0

    :try_start_e4
    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 66
    const/16 v21, 0x0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v6, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 67
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/pantech/app/music/common/MP3Header;->U32([B)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pantech/app/music/common/MP3Header;->bithdr:J

    .line 69
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/music/common/MP3Header;->bithdr:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/common/MP3Header;->mHeaderType:Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/common/MP3Header;->mFrameInfo:Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pantech/app/music/common/MP3Header;->getMP3Frame(JLcom/pantech/app/music/common/MP3Header$MP3HeaderType;Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;)Z

    move-result v21

    if-nez v21, :cond_125

    .line 70
    add-int/lit8 v10, v10, 0x1

    .line 111
    :goto_122
    if-eqz v20, :cond_96

    goto :goto_b8

    .line 76
    :cond_125
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " intPos:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " frameSize:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/common/MP3Header;->mFrameInfo:Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;->frameSize:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/common/MP3Header;->mFrameInfo:Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;->frameSize:I

    move/from16 v21, v0

    add-int v21, v21, v10

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 79
    .local v16, "test_pos":J
    const/16 v20, 0x1

    .line 80
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_16b
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v11, v0, :cond_1cd

    .line 81
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 82
    const/16 v21, 0x0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v13, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 83
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/pantech/app/music/common/MP3Header;->U32([B)J

    move-result-wide v14

    .line 85
    const-wide/32 v22, -0x1f340

    and-long v22, v22, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/music/common/MP3Header;->bithdr:J

    move-wide/from16 v24, v0

    const-wide/32 v26, -0x1f340

    and-long v24, v24, v26

    cmp-long v21, v22, v24

    if-eqz v21, :cond_20f

    .line 86
    const/16 v20, 0x0

    .line 87
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "kMask false!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/music/common/MP3Header;->bithdr:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1cd
    :goto_1cd
    if-eqz v20, :cond_263

    .line 108
    :goto_1cf
    add-int/lit8 v10, v10, 0x1

    .line 110
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "found possible 1st frame at"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_1eb} :catch_1ed
    .catchall {:try_start_e4 .. :try_end_1eb} :catchall_225

    goto/16 :goto_122

    .line 116
    .end local v6    # "bytHeader":[B
    .end local v9    # "initialPos":I
    .end local v10    # "intPos":I
    .end local v11    # "j":I
    .end local v13    # "tmp":[B
    .end local v14    # "test_header":J
    .end local v16    # "test_pos":J
    .end local v18    # "tmpframeInfo":Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;
    .end local v19    # "tmpheaderType":Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    .end local v20    # "valid":Z
    :catch_1ed
    move-exception v7

    .line 117
    .local v7, "e":Ljava/io/IOException;
    :try_start_1ee
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ReadMP3Information file exception:\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_208
    .catchall {:try_start_1ee .. :try_end_208} :catchall_225

    .line 120
    :try_start_208
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_20b} :catch_289

    .line 125
    :goto_20b
    const/16 v21, 0x0

    goto/16 :goto_c0

    .line 91
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "bytHeader":[B
    .restart local v9    # "initialPos":I
    .restart local v10    # "intPos":I
    .restart local v11    # "j":I
    .restart local v13    # "tmp":[B
    .restart local v14    # "test_header":J
    .restart local v16    # "test_pos":J
    .restart local v18    # "tmpframeInfo":Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;
    .restart local v19    # "tmpheaderType":Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    .restart local v20    # "valid":Z
    :cond_20f
    :try_start_20f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/pantech/app/music/common/MP3Header;->getMP3Frame(JLcom/pantech/app/music/common/MP3Header$MP3HeaderType;Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;)Z

    move-result v21

    if-nez v21, :cond_22a

    .line 92
    const/16 v20, 0x0

    .line 93
    const-string v21, "MP3Header"

    const-string v22, "getMP3Frame false!"

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_224
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_224} :catch_1ed
    .catchall {:try_start_20f .. :try_end_224} :catchall_225

    goto :goto_1cd

    .line 119
    .end local v6    # "bytHeader":[B
    .end local v9    # "initialPos":I
    .end local v10    # "intPos":I
    .end local v11    # "j":I
    .end local v13    # "tmp":[B
    .end local v14    # "test_header":J
    .end local v16    # "test_pos":J
    .end local v18    # "tmpframeInfo":Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;
    .end local v19    # "tmpheaderType":Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    .end local v20    # "valid":Z
    :catchall_225
    move-exception v21

    .line 120
    :try_start_226
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_229
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_229} :catch_2a6

    .line 123
    :goto_229
    throw v21

    .line 97
    .restart local v6    # "bytHeader":[B
    .restart local v9    # "initialPos":I
    .restart local v10    # "intPos":I
    .restart local v11    # "j":I
    .restart local v13    # "tmp":[B
    .restart local v14    # "test_header":J
    .restart local v16    # "test_pos":J
    .restart local v18    # "tmpframeInfo":Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;
    .restart local v19    # "tmpheaderType":Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    .restart local v20    # "valid":Z
    :cond_22a
    :try_start_22a
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "found subsequent frame #"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v11, 0x2

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " at"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, v18

    iget v0, v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;->frameSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v16, v16, v22

    .line 80
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_16b

    .line 105
    :cond_263
    const-string v21, "MP3Header"

    const-string v22, "no dice, no valid sequence of frames found."

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26a
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_26a} :catch_1ed
    .catchall {:try_start_22a .. :try_end_26a} :catchall_225

    goto/16 :goto_1cf

    .line 121
    .end local v11    # "j":I
    .end local v16    # "test_pos":J
    :catch_26c
    move-exception v8

    .line 122
    .local v8, "e1":Ljava/io/IOException;
    const-string v22, "MP3Header"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ReadMP3Information close exception:\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 121
    .end local v6    # "bytHeader":[B
    .end local v8    # "e1":Ljava/io/IOException;
    .end local v9    # "initialPos":I
    .end local v10    # "intPos":I
    .end local v13    # "tmp":[B
    .end local v14    # "test_header":J
    .end local v18    # "tmpframeInfo":Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;
    .end local v19    # "tmpheaderType":Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
    .end local v20    # "valid":Z
    .restart local v7    # "e":Ljava/io/IOException;
    :catch_289
    move-exception v8

    .line 122
    .restart local v8    # "e1":Ljava/io/IOException;
    const-string v21, "MP3Header"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ReadMP3Information close exception:\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20b

    .line 121
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_2a6
    move-exception v8

    .line 122
    .restart local v8    # "e1":Ljava/io/IOException;
    const-string v22, "MP3Header"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ReadMP3Information close exception:\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_229
.end method

.method public getBitrate()I
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/pantech/app/music/common/MP3Header;->mFrameInfo:Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;

    iget v0, v0, Lcom/pantech/app/music/common/MP3Header$MP3FrameInfo;->bitrate:I

    return v0
.end method
