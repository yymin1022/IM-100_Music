.class public Lcom/pantech/audiotag/id3/data/ID3TagTextOld;
.super Ljava/lang/Object;
.source "ID3TagTextOld.java"


# instance fields
.field private mID3TagTextOldV1:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

.field private mID3TagTextOldV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-direct {v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->mID3TagTextOldV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    .line 8
    new-instance v0, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-direct {v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->mID3TagTextOldV1:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    .line 5
    return-void
.end method


# virtual methods
.method public getV1TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->mID3TagTextOldV1:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    return-object v0
.end method

.method public getV2TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->mID3TagTextOldV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    return-object v0
.end method

.method public putTextV1(Lcom/pantech/audiotag/data/Data;)V
    .registers 3
    .param p1, "data"    # Lcom/pantech/audiotag/data/Data;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->mID3TagTextOldV1:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->putDataInMap(Lcom/pantech/audiotag/data/Data;)V

    .line 20
    return-void
.end method

.method public putTextV2(Lcom/pantech/audiotag/data/Data;)V
    .registers 3
    .param p1, "data"    # Lcom/pantech/audiotag/data/Data;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->mID3TagTextOldV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->putDataInMap(Lcom/pantech/audiotag/data/Data;)V

    .line 14
    return-void
.end method
