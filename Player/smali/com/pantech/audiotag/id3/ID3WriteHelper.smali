.class public Lcom/pantech/audiotag/id3/ID3WriteHelper;
.super Ljava/lang/Object;
.source "ID3WriteHelper.java"


# static fields
.field public static final WRITE_MODE_TYPE_1_V24:I = 0x2

.field public static final WRITE_MODE_TYPE_1_V2X:I = 0x1

.field public static final WRITE_MODE_TYPE_2_COVER:I = 0x3

.field public static final WRITE_MODE_TYPE_2_NOTCOVER:I = 0x4


# instance fields
.field private mCalculatedPaddingSize:I

.field private mTagBodySize:I

.field private mWriteMode:I


# direct methods
.method public constructor <init>(JJJJ)V
    .registers 10
    .param p1, "endTagSize"    # J
    .param p3, "tagGapSize"    # J
    .param p5, "headerSize"    # J
    .param p7, "paddingSize"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct/range {p0 .. p8}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->setWriteModeAndData(JJJJ)V

    .line 39
    return-void
.end method

.method private setTagBodySize(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/pantech/audiotag/id3/ID3WriteHelper;->mTagBodySize:I

    .line 115
    return-void
.end method

.method private setWriteModeAndCalculPaddingSize(II)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "size"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/pantech/audiotag/id3/ID3WriteHelper;->mWriteMode:I

    .line 121
    iput p2, p0, Lcom/pantech/audiotag/id3/ID3WriteHelper;->mCalculatedPaddingSize:I

    .line 122
    return-void
.end method

.method private setWriteModeAndData(JJJJ)V
    .registers 16
    .param p1, "endTagSize"    # J
    .param p3, "tagGapSize"    # J
    .param p5, "headerSize"    # J
    .param p7, "paddingSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, -0x1

    .line 44
    cmp-long v0, p3, v4

    if-gtz v0, :cond_3c

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID3WriteHelper() WRITE TYPE: 1: gapSize is under 0. gapsize>> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v0

    if-ne v0, v3, :cond_2c

    .line 51
    sub-long v0, p1, p5

    add-long/2addr v0, p3

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->setTagBodySize(I)V

    .line 52
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->setWriteModeAndCalculPaddingSize(II)V

    .line 83
    :goto_2b
    return-void

    .line 56
    :cond_2c
    sub-long v0, p1, p5

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->setTagBodySize(I)V

    .line 57
    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    mul-long/2addr v2, p3

    add-long/2addr v2, p7

    long-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->setWriteModeAndCalculPaddingSize(II)V

    goto :goto_2b

    .line 62
    :cond_3c
    cmp-long v0, p7, v4

    if-lez v0, :cond_6e

    cmp-long v0, p7, p3

    if-lez v0, :cond_6e

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID3WriteHelper() WRITE TYPE: 2: gapSize is over 0 and original padding size cover gapsize >> originPadding/gapsize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 67
    sub-long v0, p1, p5

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->setTagBodySize(I)V

    .line 69
    const/4 v0, 0x3

    sub-long v2, p7, p3

    long-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->setWriteModeAndCalculPaddingSize(II)V

    goto :goto_2b

    .line 76
    :cond_6e
    const-string v0, "ID3WriteHelper() WRITE TYPE: 3: gapSize is over 0 and original padding size DO NOT cover gapsize"

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 78
    add-long v0, p1, p3

    sub-long/2addr v0, p5

    sub-long/2addr v0, p7

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->setTagBodySize(I)V

    .line 80
    invoke-direct {p0, v3, v2}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->setWriteModeAndCalculPaddingSize(II)V

    goto :goto_2b
.end method


# virtual methods
.method public getCalculatedPaddingSize()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/pantech/audiotag/id3/ID3WriteHelper;->mCalculatedPaddingSize:I

    return v0
.end method

.method public getTagBodySize()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/pantech/audiotag/id3/ID3WriteHelper;->mTagBodySize:I

    return v0
.end method

.method public getWriteMode()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/pantech/audiotag/id3/ID3WriteHelper;->mWriteMode:I

    return v0
.end method
