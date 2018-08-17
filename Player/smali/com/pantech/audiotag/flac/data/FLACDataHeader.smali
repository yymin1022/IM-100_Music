.class public Lcom/pantech/audiotag/flac/data/FLACDataHeader;
.super Ljava/lang/Object;
.source "FLACDataHeader.java"


# instance fields
.field private lastFlag:I

.field private lastLength:I

.field private lastType:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "flag"    # I
    .param p2, "type"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->lastFlag:I

    .line 6
    iput v0, p0, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->lastType:I

    .line 7
    iput v0, p0, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->lastLength:I

    .line 12
    iput p1, p0, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->lastFlag:I

    .line 13
    iput p2, p0, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->lastType:I

    .line 14
    iput p3, p0, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->lastLength:I

    .line 15
    return-void
.end method


# virtual methods
.method public getFlag()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->lastFlag:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->lastLength:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->lastType:I

    return v0
.end method
