.class public Lcom/pantech/audiotag/data/Data;
.super Lcom/pantech/audiotag/data/AbsData;
.source "Data.java"


# instance fields
.field private dataSize:I

.field private frameSize:I

.field private fullSize:I

.field private isNew:Z

.field private isOld:Z

.field private isWrite:Z

.field private path:Ljava/lang/String;

.field private pos:I

.field private text:Ljava/lang/String;

.field private textByte:[B

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0}, Lcom/pantech/audiotag/data/AbsData;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/pantech/audiotag/data/Data;->isWrite:Z

    .line 16
    iput-boolean v0, p0, Lcom/pantech/audiotag/data/Data;->isNew:Z

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/audiotag/data/Data;->isOld:Z

    .line 8
    return-void
.end method


# virtual methods
.method public getDataSize()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/pantech/audiotag/data/Data;->dataSize:I

    return v0
.end method

.method public getFrameSize()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/pantech/audiotag/data/Data;->frameSize:I

    return v0
.end method

.method public getFullSize()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/pantech/audiotag/data/Data;->fullSize:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pantech/audiotag/data/Data;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/pantech/audiotag/data/Data;->pos:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/audiotag/data/Data;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextByte()[B
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/audiotag/data/Data;->textByte:[B

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/audiotag/data/Data;->type:I

    return v0
.end method

.method public isNew()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/pantech/audiotag/data/Data;->isNew:Z

    return v0
.end method

.method public isOld()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/pantech/audiotag/data/Data;->isOld:Z

    return v0
.end method

.method public isWrite()Z
    .registers 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/pantech/audiotag/data/Data;->isWrite:Z

    return v0
.end method

.method public setDataSize(I)V
    .registers 2
    .param p1, "dataSize"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/pantech/audiotag/data/Data;->dataSize:I

    .line 154
    return-void
.end method

.method public setFrameSize(I)V
    .registers 2
    .param p1, "frameSize"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/pantech/audiotag/data/Data;->frameSize:I

    .line 130
    return-void
.end method

.method public setFullSize(I)V
    .registers 2
    .param p1, "fullSize"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/pantech/audiotag/data/Data;->fullSize:I

    .line 142
    return-void
.end method

.method public setNew(Z)V
    .registers 2
    .param p1, "isNew"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/pantech/audiotag/data/Data;->isNew:Z

    .line 94
    return-void
.end method

.method public setOld(Z)V
    .registers 2
    .param p1, "isOld"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/pantech/audiotag/data/Data;->isOld:Z

    .line 106
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/pantech/audiotag/data/Data;->path:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setPos(I)V
    .registers 2
    .param p1, "pos"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/pantech/audiotag/data/Data;->pos:I

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/pantech/audiotag/data/Data;->text:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTextByte([B)V
    .registers 2
    .param p1, "textByte"    # [B

    .prologue
    .line 69
    iput-object p1, p0, Lcom/pantech/audiotag/data/Data;->textByte:[B

    .line 70
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/pantech/audiotag/data/Data;->type:I

    .line 46
    return-void
.end method

.method public setWrite(Z)V
    .registers 2
    .param p1, "isWrite"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/pantech/audiotag/data/Data;->isWrite:Z

    .line 118
    return-void
.end method
