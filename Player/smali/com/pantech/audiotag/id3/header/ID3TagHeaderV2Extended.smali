.class public Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;
.super Ljava/lang/Object;
.source "ID3TagHeaderV2Extended.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagFileStream;


# static fields
.field private static final EXTENDED_HEADER_SIZE_LENGTH:I = 0x4


# instance fields
.field private mExtendedHeaderSize:I

.field private mVersion:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "version"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mExtendedHeaderSize:I

    .line 26
    iput p1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mVersion:I

    .line 27
    return-void
.end method


# virtual methods
.method public doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z
    .registers 6
    .param p1, "afStream"    # Lcom/pantech/audiotag/AudioFileStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 35
    const-string v1, "---------------------------------------"

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, v3}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v0

    .line 39
    .local v0, "temp":[B
    if-eqz v0, :cond_38

    .line 41
    iget v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mVersion:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_55

    .line 42
    invoke-static {v0}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v1

    iput v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mExtendedHeaderSize:I

    .line 46
    :cond_17
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "ExtendedHeader Size= "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/common/LLog;->getIsJavProjectMode()Z

    move-result v1

    if-eqz v1, :cond_60

    iget v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mExtendedHeaderSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX([B)V

    .line 50
    :cond_38
    if-eqz v0, :cond_3f

    iget v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mExtendedHeaderSize:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_63

    .line 52
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Not Available Extended Header Infomation: Header Size>> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mExtendedHeaderSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    .line 60
    :goto_54
    return v1

    .line 43
    :cond_55
    iget v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mVersion:I

    if-ne v1, v3, :cond_17

    .line 44
    invoke-static {v0}, Lcom/pantech/audiotag/id3/util/SyncSafeInteger;->convertFromByteToInteger([B)I

    move-result v1

    iput v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mExtendedHeaderSize:I

    goto :goto_17

    .line 46
    :cond_60
    const-string v1, "0x"

    goto :goto_2a

    .line 57
    :cond_63
    iget v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mExtendedHeaderSize:I

    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/pantech/audiotag/AudioFileStream;->skip(J)Z

    .line 60
    const/4 v1, 0x1

    goto :goto_54
.end method

.method public getExtendedHeaderSize()I
    .registers 3

    .prologue
    .line 70
    iget v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mVersion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 71
    iget v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mExtendedHeaderSize:I

    add-int/lit8 v0, v0, 0x4

    .line 73
    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->mExtendedHeaderSize:I

    goto :goto_9
.end method
