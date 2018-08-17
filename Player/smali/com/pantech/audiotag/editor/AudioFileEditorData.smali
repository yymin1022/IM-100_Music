.class public Lcom/pantech/audiotag/editor/AudioFileEditorData;
.super Ljava/lang/Object;
.source "AudioFileEditorData.java"


# instance fields
.field private mCode:I

.field private mData:Ljava/lang/Object;

.field private mType:I

.field private mWriteType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mCode:I

    .line 8
    iput v1, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mType:I

    .line 9
    iput v1, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mWriteType:I

    .line 5
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mCode:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mType:I

    return v0
.end method

.method public getWriteType()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mWriteType:I

    return v0
.end method

.method public setCode(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mCode:I

    .line 22
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mData:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mType:I

    .line 34
    return-void
.end method

.method public setWriteType(I)V
    .registers 2
    .param p1, "writeType"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/pantech/audiotag/editor/AudioFileEditorData;->mWriteType:I

    .line 58
    return-void
.end method
