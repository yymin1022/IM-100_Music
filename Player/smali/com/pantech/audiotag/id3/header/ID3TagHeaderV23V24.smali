.class public Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;
.super Ljava/lang/Object;
.source "ID3TagHeaderV23V24.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagFileStream;


# instance fields
.field protected mHasExtendedHeader:Z

.field private mHasFooter:Z

.field private mHeaderFlagByte:[B

.field private mVersion:I


# direct methods
.method public constructor <init>([BI)V
    .registers 4
    .param p1, "headerFlagByte"    # [B
    .param p2, "magerVersion"    # I

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mHasExtendedHeader:Z

    .line 30
    iput-boolean v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mHasFooter:Z

    .line 35
    iput-object p1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mHeaderFlagByte:[B

    .line 36
    iput p2, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mVersion:I

    .line 37
    return-void
.end method

.method private checkHeaderAvailable([B)Z
    .registers 5
    .param p1, "flag"    # [B

    .prologue
    const/4 v2, 0x0

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "isOK":Z
    iget v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mVersion:I

    packed-switch v1, :pswitch_data_18

    .line 103
    :cond_7
    :goto_7
    return v0

    .line 93
    :pswitch_8
    aget-byte v1, p1, v2

    and-int/lit8 v1, v1, 0x1f

    if-nez v1, :cond_7

    .line 94
    const/4 v0, 0x1

    .line 95
    goto :goto_7

    .line 98
    :pswitch_10
    aget-byte v1, p1, v2

    and-int/lit8 v1, v1, 0xf

    if-nez v1, :cond_7

    .line 99
    const/4 v0, 0x1

    goto :goto_7

    .line 90
    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method private getBinaryString([B)Ljava/lang/String;
    .registers 4
    .param p1, "headerFlagByte"    # [B

    .prologue
    .line 109
    invoke-static {p1}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v0

    .line 111
    .local v0, "temp":I
    if-lez v0, :cond_c

    .line 112
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/audiotag/common/ByteOperation;->convertFromIntToBinaryString(II)Ljava/lang/String;

    move-result-object v1

    .line 114
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method


# virtual methods
.method public doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z
    .registers 7
    .param p1, "afStream"    # Lcom/pantech/audiotag/AudioFileStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    iget-object v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mHeaderFlagByte:[B

    invoke-direct {p0, v4}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->getBinaryString([B)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_6a

    iget-object v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mHeaderFlagByte:[B

    invoke-direct {p0, v4}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->checkHeaderAvailable([B)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 49
    invoke-static {v0, v3}, Lcom/pantech/audiotag/common/ByteOperation;->getBinaryCodeFromString(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, "tempCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Header Unsynchronisation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 53
    if-ne v1, v2, :cond_2f

    .line 55
    const-string v3, "Header Unsynchronisation is exist"

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 60
    :cond_2f
    iget v3, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mVersion:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4f

    .line 62
    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/pantech/audiotag/common/ByteOperation;->getBinaryCodeFromString(Ljava/lang/String;I)I

    move-result v1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Header Footer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 66
    if-ne v1, v2, :cond_4f

    .line 67
    iput-boolean v2, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mHasFooter:Z

    .line 71
    :cond_4f
    invoke-static {v0, v2}, Lcom/pantech/audiotag/common/ByteOperation;->getBinaryCodeFromString(Ljava/lang/String;I)I

    move-result v1

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Header ExtendedHeader: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 74
    if-ne v1, v2, :cond_69

    .line 75
    iput-boolean v2, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mHasExtendedHeader:Z

    .line 82
    .end local v1    # "tempCode":I
    :cond_69
    :goto_69
    return v2

    :cond_6a
    move v2, v3

    .line 79
    goto :goto_69
.end method

.method public isExtendedHeader()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mHasExtendedHeader:Z

    return v0
.end method

.method public isFooter()Z
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->mHasFooter:Z

    return v0
.end method
