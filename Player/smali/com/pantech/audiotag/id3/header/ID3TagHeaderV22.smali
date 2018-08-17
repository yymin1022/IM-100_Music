.class public Lcom/pantech/audiotag/id3/header/ID3TagHeaderV22;
.super Ljava/lang/Object;
.source "ID3TagHeaderV22.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagFileStream;


# instance fields
.field mHeaderFlagByte:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "headerFlagByte"    # [B

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV22;->mHeaderFlagByte:[B

    .line 17
    return-void
.end method

.method private getCheckHeaderFlag([B)Z
    .registers 4
    .param p1, "flag"    # [B

    .prologue
    const/4 v0, 0x0

    .line 43
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x3f

    if-nez v1, :cond_e

    .line 45
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_e

    .line 46
    const/4 v0, 0x1

    .line 49
    :cond_e
    return v0
.end method


# virtual methods
.method public doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z
    .registers 5
    .param p1, "afStream"    # Lcom/pantech/audiotag/AudioFileStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x1

    .line 34
    .local v0, "result":Z
    iget-object v1, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV22;->mHeaderFlagByte:[B

    invoke-direct {p0, v1}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV22;->getCheckHeaderFlag([B)Z

    move-result v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Check Compression Header? >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 37
    return v0
.end method
