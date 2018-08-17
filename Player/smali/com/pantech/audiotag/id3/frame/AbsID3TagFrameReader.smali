.class public abstract Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;
.super Lcom/pantech/audiotag/frame/AbsAudioTagFrameReader;
.source "AbsID3TagFrameReader.java"


# static fields
.field protected static final FRAME_ID_APIC_V2:Ljava/lang/String; = "PIC"

.field protected static final FRAME_ID_APIC_V23V24:Ljava/lang/String; = "APIC"

.field public static final FRAME_ID_TEXT_ALBUM_V2:Ljava/lang/String; = "TAL"

.field public static final FRAME_ID_TEXT_ALBUM_V23V24:Ljava/lang/String; = "TALB"

.field public static final FRAME_ID_TEXT_ARTIST_V2:Ljava/lang/String; = "TP1"

.field public static final FRAME_ID_TEXT_ARTIST_V23V24:Ljava/lang/String; = "TPE1"

.field public static final FRAME_ID_TEXT_GENRE_V2:Ljava/lang/String; = "TCO"

.field public static final FRAME_ID_TEXT_GENRE_V23V24:Ljava/lang/String; = "TCON"

.field public static final FRAME_ID_TEXT_TITLE_V2:Ljava/lang/String; = "TT2"

.field public static final FRAME_ID_TEXT_TITLE_V23V24:Ljava/lang/String; = "TIT2"

.field public static final FRAME_ID_TEXT_TRACK_V2:Ljava/lang/String; = "TRK"

.field public static final FRAME_ID_TEXT_TRACK_V23V24:Ljava/lang/String; = "TRCK"

.field public static final FRAME_ID_TEXT_YEAR_V2:Ljava/lang/String; = "TYE"

.field public static final FRAME_ID_TEXT_YEAR_V23V24:Ljava/lang/String; = "TYER"

.field protected static final FRAME_ID_USLT_V2:Ljava/lang/String; = "ULT"

.field protected static final FRAME_ID_USLT_V23V24:Ljava/lang/String; = "USLT"

.field protected static final FRAME_MAX_SIZE:I = 0x1000000

.field protected static final FRAME_V23V24_FLAG_LENGTH:I = 0x2

.field protected static final FRAME_V23V24_ID_LENGTH:I = 0x4

.field protected static final FRAME_V23V24_SIZE_LENGTH:I = 0x4

.field protected static final FRAME_V2_ID_LENGTH:I = 0x3

.field protected static final FRAME_V2_SIZE_LENGTH:I = 0x3


# instance fields
.field private mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

.field protected mVersion:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "version"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/pantech/audiotag/frame/AbsAudioTagFrameReader;-><init>()V

    .line 62
    new-instance v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;

    invoke-direct {v0}, Lcom/pantech/audiotag/frame/AudioTagFrameData;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    .line 71
    iput p1, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mVersion:I

    .line 72
    return-void
.end method


# virtual methods
.method protected checkLengthSize(I)Z
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 173
    const/high16 v0, 0x1000000

    if-gt p1, v0, :cond_6

    if-gez p1, :cond_8

    .line 174
    :cond_6
    const/4 v0, 0x0

    .line 176
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public clearValue()V
    .registers 2

    .prologue
    .line 166
    new-instance v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;

    invoke-direct {v0}, Lcom/pantech/audiotag/frame/AudioTagFrameData;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    .line 167
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    invoke-virtual {v0}, Lcom/pantech/audiotag/frame/AudioTagFrameData;->clear()V

    .line 168
    return-void
.end method

.method public getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    return-object v0
.end method

.method public getFrameID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget-object v0, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameID:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 119
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget-object v0, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameID:Ljava/lang/String;

    .line 121
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getFrameLength()I
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v0, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    return v0
.end method

.method public isPadding()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget-object v2, v2, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameIDByte:[B

    if-eqz v2, :cond_10

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget-object v2, v2, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameIDByte:[B

    array-length v2, v2

    if-lt v0, v2, :cond_11

    .line 143
    const/4 v1, 0x1

    .line 146
    .end local v0    # "i":I
    :cond_10
    return v1

    .line 139
    .restart local v0    # "i":I
    :cond_11
    iget-object v2, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget-object v2, v2, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameIDByte:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_10

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public isValidFrameFlag()Z
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget-boolean v0, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mIsFrameFlagOK:Z

    return v0
.end method

.method protected saveFrameData(Ljava/lang/String;[BI)V
    .registers 5
    .param p1, "frameID"    # Ljava/lang/String;
    .param p2, "frameIDByte"    # [B
    .param p3, "frameLen"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iput-object p1, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameID:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iput-object p2, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameIDByte:[B

    .line 184
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iput p3, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    .line 185
    return-void
.end method

.method protected saveFrameData(Ljava/lang/String;[BI[BZ)V
    .registers 7
    .param p1, "frameID"    # Ljava/lang/String;
    .param p2, "frameIDByte"    # [B
    .param p3, "frameLen"    # I
    .param p4, "flagByte"    # [B
    .param p5, "isFlagOK"    # Z

    .prologue
    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->saveFrameData(Ljava/lang/String;[BI)V

    .line 191
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iput-object p4, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameFlag:[B

    .line 192
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iput-boolean p5, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mIsFrameFlagOK:Z

    .line 193
    return-void
.end method

.method public skipPreviousFrame(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 110
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v0, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    if-lez v0, :cond_16

    .line 111
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v0, v0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->mID3FrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v2, v2, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 112
    :cond_16
    return-void
.end method
