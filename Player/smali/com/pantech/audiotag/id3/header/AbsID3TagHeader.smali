.class public abstract Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
.super Ljava/lang/Object;
.source "AbsID3TagHeader.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagFileStream;


# static fields
.field public static final HEADER_FOOTER_SIZE:I = 0xa

.field public static final HEADER_NORMAL_SIZE:I = 0xa

.field public static final HEADER_TAG_MAX_SIZE:I = 0x300000

.field public static final HEADER_V1_ALL_TAG_SIZE:I = 0x80

.field public static final HEADER_V1_NAME:Ljava/lang/String; = "TAG"

.field public static final HEADER_V1_NAME_LENGTH:I = 0x3

.field public static final HEADER_V1_TAG_DATA_SIZE:I = 0x7d

.field protected static final HEADER_V2_FLAG_LENGTH:I = 0x1

.field protected static final HEADER_V2_NAME:Ljava/lang/String; = "ID3"

.field protected static final HEADER_V2_NAME_LENGTH:I = 0x3

.field protected static final HEADER_V2_SIZE_LENGTH:I = 0x4

.field protected static final HEADER_V2_VERSION_LENGTH:I = 0x2


# instance fields
.field mFileSize:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "fileSize"    # J

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;->mFileSize:J

    .line 45
    return-void
.end method


# virtual methods
.method public abstract getExtendedHeaderSize()I
.end method

.method public abstract getFooterSize()I
.end method

.method public abstract getMagerVersion()I
.end method

.method public abstract getTagDataSize()I
.end method

.method public abstract isUnsynchronization()Z
.end method
