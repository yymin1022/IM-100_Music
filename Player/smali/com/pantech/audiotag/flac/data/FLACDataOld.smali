.class public Lcom/pantech/audiotag/flac/data/FLACDataOld;
.super Lcom/pantech/audiotag/data/AbsDataMap;
.source "FLACDataOld.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[FLACDataOld] "


# instance fields
.field private mCommentCount:I

.field private mLyrics:Ljava/lang/String;

.field private mPositionFrontOfItem:I

.field private mResultCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/pantech/audiotag/data/AbsDataMap;-><init>()V

    return-void
.end method

.method private calcDataLength(II)I
    .registers 5
    .param p1, "type"    # I
    .param p2, "commentLength"    # I

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_66

    .line 96
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 90
    :pswitch_5
    const-string v0, "TITLE"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    goto :goto_4

    .line 91
    :pswitch_15
    const-string v0, "ARTIST"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    goto :goto_4

    .line 92
    :pswitch_25
    const-string v0, "ALBUM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    goto :goto_4

    .line 93
    :pswitch_35
    const-string v0, "TRACKNUMBER"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    goto :goto_4

    .line 94
    :pswitch_45
    const-string v0, "GENRE"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    goto :goto_4

    .line 95
    :pswitch_55
    sget-object v0, Lcom/pantech/audiotag/data/VorbisCommentData;->LYRICS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    goto :goto_4

    .line 88
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5
        :pswitch_15
        :pswitch_25
        :pswitch_45
        :pswitch_35
        :pswitch_55
    .end packed-switch
.end method


# virtual methods
.method public getCommentCount()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/pantech/audiotag/flac/data/FLACDataOld;->mCommentCount:I

    return v0
.end method

.method public getPositionFrontOfCommentCount()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/pantech/audiotag/flac/data/FLACDataOld;->mPositionFrontOfItem:I

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/pantech/audiotag/flac/data/FLACDataOld;->mResultCode:I

    return v0
.end method

.method public putParsedData(IILjava/lang/String;)V
    .registers 9
    .param p1, "itemStartPosition"    # I
    .param p2, "commentLength"    # I
    .param p3, "comment_item"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 31
    .local v2, "itemStr":Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "i":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_36

    .line 35
    const-string v3, "[FLACDataOld] VorbisCommentData getParsedData() has no String \'=\'"

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 52
    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FLACDataOld] putParsedData() id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " comment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 54
    if-eqz v1, :cond_35

    .line 56
    invoke-static {v1}, Lcom/pantech/audiotag/data/VorbisCommentData;->getTypeOfID(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_72

    .line 67
    :cond_35
    :goto_35
    return-void

    .line 39
    :cond_36
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_4c

    .line 42
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    goto :goto_10

    .line 46
    :cond_4c
    const-string v3, "[FLACDataOld] VorbisCommentData getParsedData() itemStr is empty"

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 48
    const-string v2, ""

    goto :goto_10

    .line 58
    :pswitch_54
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->setData(IIILjava/lang/String;)V

    goto :goto_35

    .line 59
    :pswitch_59
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->setData(IIILjava/lang/String;)V

    goto :goto_35

    .line 60
    :pswitch_5e
    const/4 v3, 0x3

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->setData(IIILjava/lang/String;)V

    goto :goto_35

    .line 61
    :pswitch_63
    const/4 v3, 0x5

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->setData(IIILjava/lang/String;)V

    goto :goto_35

    .line 62
    :pswitch_68
    const/4 v3, 0x4

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->setData(IIILjava/lang/String;)V

    goto :goto_35

    .line 63
    :pswitch_6d
    const/4 v3, 0x6

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->setData(IIILjava/lang/String;)V

    goto :goto_35

    .line 56
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_54
        :pswitch_59
        :pswitch_5e
        :pswitch_68
        :pswitch_63
        :pswitch_6d
    .end packed-switch
.end method

.method public setCommentCount(I)V
    .registers 2
    .param p1, "commentCount"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/pantech/audiotag/flac/data/FLACDataOld;->mCommentCount:I

    .line 123
    return-void
.end method

.method public setData(IIILjava/lang/String;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "commentLength"    # I
    .param p3, "type"    # I
    .param p4, "itemStr"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FLACDataOld] setData: position"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/pantech/audiotag/data/Data;

    invoke-direct {v0}, Lcom/pantech/audiotag/data/Data;-><init>()V

    .line 75
    .local v0, "item":Lcom/pantech/audiotag/data/Data;
    invoke-virtual {v0, p3}, Lcom/pantech/audiotag/data/Data;->setType(I)V

    .line 76
    invoke-virtual {v0, p4}, Lcom/pantech/audiotag/data/Data;->setText(Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/data/Data;->setOld(Z)V

    .line 78
    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/data/Data;->setPos(I)V

    .line 79
    invoke-virtual {v0, p2}, Lcom/pantech/audiotag/data/Data;->setFullSize(I)V

    .line 80
    invoke-direct {p0, p3, p2}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->calcDataLength(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/data/Data;->setDataSize(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->insertOrReplaceDataInMap(Lcom/pantech/audiotag/data/Data;)V

    .line 83
    return-void
.end method

.method public setPositionFrontOfCommentCount(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/pantech/audiotag/flac/data/FLACDataOld;->mPositionFrontOfItem:I

    .line 135
    return-void
.end method

.method public setResultCode(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/pantech/audiotag/flac/data/FLACDataOld;->mResultCode:I

    .line 108
    return-void
.end method
