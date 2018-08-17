.class public Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;
.super Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
.source "ID3TagHeaderV2.java"


# instance fields
.field protected mExtendedTagSize:I

.field protected mFooterSize:I

.field protected mHeaderID:Ljava/lang/String;

.field protected mIsUnsynchronization:Z

.field protected mMagerVersion:I

.field protected mTagDataSize:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    .line 23
    iput v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mExtendedTagSize:I

    .line 24
    iput v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mFooterSize:I

    .line 25
    iput-boolean v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mIsUnsynchronization:Z

    .line 31
    return-void
.end method

.method public constructor <init>(J)V
    .registers 6
    .param p1, "fileSize"    # J

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;-><init>(J)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    .line 23
    iput v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mExtendedTagSize:I

    .line 24
    iput v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mFooterSize:I

    .line 25
    iput-boolean v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mIsUnsynchronization:Z

    .line 37
    return-void
.end method

.method private processExtraHeader(Lcom/pantech/audiotag/AudioFileStream;I)Z
    .registers 9
    .param p1, "afStream"    # Lcom/pantech/audiotag/AudioFileStream;
    .param p2, "headerFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v4, 0x0

    .line 203
    .local v4, "isExtraOK":Z
    invoke-static {p2}, Lcom/pantech/audiotag/common/ByteOperation;->convertFromInt(I)[B

    move-result-object v0

    .line 205
    .local v0, "headerFlagByte":[B
    if-eqz v0, :cond_46

    .line 207
    iget v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    packed-switch v5, :pswitch_data_48

    .line 241
    :cond_c
    :goto_c
    return v4

    .line 210
    :pswitch_d
    new-instance v2, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV22;

    invoke-direct {v2, v0}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV22;-><init>([B)V

    .line 211
    .local v2, "id3TagHeaderV22":Lcom/pantech/audiotag/id3/header/ID3TagHeaderV22;
    invoke-virtual {v2, p1}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV22;->doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z

    move-result v4

    .line 212
    goto :goto_c

    .line 216
    .end local v2    # "id3TagHeaderV22":Lcom/pantech/audiotag/id3/header/ID3TagHeaderV22;
    :pswitch_17
    new-instance v3, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;

    iget v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    invoke-direct {v3, v0, v5}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;-><init>([BI)V

    .line 217
    .local v3, "id3TagHeaderV23V24":Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;
    invoke-virtual {v3, p1}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z

    move-result v4

    .line 219
    if-eqz v4, :cond_3b

    .line 222
    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->isExtendedHeader()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 224
    new-instance v1, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;

    iget v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    invoke-direct {v1, v5}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;-><init>(I)V

    .line 225
    .local v1, "id3TagHeaderExtended":Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;
    invoke-virtual {v1, p1}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z

    move-result v4

    .line 226
    invoke-virtual {v1}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;->getExtendedHeaderSize()I

    move-result v5

    iput v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mExtendedTagSize:I

    .line 230
    .end local v1    # "id3TagHeaderExtended":Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2Extended;
    :cond_3b
    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;->isFooter()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 231
    const/16 v5, 0xa

    iput v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mFooterSize:I

    goto :goto_c

    .line 238
    .end local v3    # "id3TagHeaderV23V24":Lcom/pantech/audiotag/id3/header/ID3TagHeaderV23V24;
    :cond_46
    const/4 v4, 0x0

    goto :goto_c

    .line 207
    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_d
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z
    .registers 12
    .param p1, "afStream"    # Lcom/pantech/audiotag/AudioFileStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x80

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 79
    iput v2, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mTagDataSize:I

    .line 80
    iput v2, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mExtendedTagSize:I

    .line 81
    const/4 v1, 0x0

    .line 85
    .local v1, "headerFlag":I
    const-string v4, "---------------------------------------"

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 88
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v3

    .line 89
    .local v3, "temp":[B
    if-eqz v3, :cond_31

    .line 91
    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->convertToString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mHeaderID:Ljava/lang/String;

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Header V2X Tag name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mHeaderID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 95
    :cond_31
    if-eqz v3, :cond_3d

    iget-object v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mHeaderID:Ljava/lang/String;

    const-string v5, "ID3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 97
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: Not Available Header Infomation: Header ID>> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mHeaderID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 190
    :cond_51
    :goto_51
    return v2

    .line 102
    :cond_52
    invoke-virtual {p1, v7}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v3

    .line 103
    if-eqz v3, :cond_51

    .line 105
    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v0

    .line 106
    .local v0, "fullVersion":I
    aget-byte v4, v3, v2

    iput v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Header Version= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " full version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 115
    aget-byte v4, v3, v2

    const/16 v5, 0xff

    if-ge v4, v5, :cond_cc

    aget-byte v4, v3, v6

    const/16 v5, 0xff

    if-ge v4, v5, :cond_cc

    .line 117
    if-eqz v3, :cond_94

    iget v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    if-ltz v4, :cond_94

    iget v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    if-le v4, v9, :cond_a9

    .line 119
    :cond_94
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: Not Available Header Infomation: Header Version>> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto :goto_51

    .line 123
    :cond_a9
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getGetType()I

    move-result v4

    if-ne v4, v7, :cond_d2

    iget v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    if-lt v4, v7, :cond_b7

    iget v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    if-le v4, v9, :cond_d2

    .line 125
    :cond_b7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: Not Available Header Infomation: GET TYPE TEXT isn\'t available Header Version>> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto :goto_51

    .line 131
    :cond_cc
    const-string v4, "Error: Not Available Header Infomation: Header Version longer than 0xFF"

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto :goto_51

    .line 137
    :cond_d2
    invoke-virtual {p1, v6}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v3

    .line 138
    if-eqz v3, :cond_15c

    .line 140
    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v1

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "Header Flag= "

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/common/LLog;->getIsJavProjectMode()Z

    move-result v4

    if-eqz v4, :cond_157

    const-string v4, "0x"

    :goto_eb
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 142
    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX([B)V

    .line 151
    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0x80

    if-le v4, v6, :cond_101

    .line 153
    iput-boolean v6, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mIsUnsynchronization:Z

    .line 157
    :cond_101
    invoke-virtual {p1, v9}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v3

    .line 158
    if-eqz v3, :cond_124

    .line 160
    invoke-static {v3}, Lcom/pantech/audiotag/id3/util/SyncSafeInteger;->convertFromByteToInteger([B)I

    move-result v4

    iput v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mTagDataSize:I

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Header Size= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mTagDataSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 163
    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX([B)V

    .line 166
    :cond_124
    aget-byte v4, v3, v2

    if-ge v4, v8, :cond_163

    aget-byte v4, v3, v6

    if-ge v4, v8, :cond_163

    aget-byte v4, v3, v7

    if-ge v4, v8, :cond_163

    const/4 v4, 0x3

    aget-byte v4, v3, v4

    if-ge v4, v8, :cond_163

    .line 168
    if-eqz v3, :cond_141

    iget v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mTagDataSize:I

    if-ltz v4, :cond_141

    iget v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mTagDataSize:I

    const/high16 v5, 0x300000

    if-le v4, v5, :cond_181

    .line 170
    :cond_141
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: Not Available Header Infomation: Header SIZE>> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mTagDataSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 141
    :cond_157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_eb

    .line 146
    :cond_15c
    const-string v4, "Error: Not Available Header Infomation: Header Flag is null"

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 176
    :cond_163
    const-string v4, "Error: Not Available Header Infomation: Header SIZE longer than 0x80"

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: Header SIZE byteHeaderSize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mTagDataSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 178
    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX([B)V

    goto/16 :goto_51

    .line 183
    :cond_181
    const/4 v2, 0x1

    .line 185
    .local v2, "isOK":Z
    if-lez v1, :cond_51

    .line 187
    invoke-direct {p0, p1, v1}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->processExtraHeader(Lcom/pantech/audiotag/AudioFileStream;I)Z

    move-result v2

    goto/16 :goto_51
.end method

.method public getExtendedHeaderSize()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mExtendedTagSize:I

    return v0
.end method

.method public getFooterSize()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mFooterSize:I

    return v0
.end method

.method public getMagerVersion()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mMagerVersion:I

    return v0
.end method

.method public getTagDataSize()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mTagDataSize:I

    return v0
.end method

.method public isUnsynchronization()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;->mIsUnsynchronization:Z

    return v0
.end method
