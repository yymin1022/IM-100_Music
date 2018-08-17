.class Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;
.super Ljava/lang/Object;
.source "AdapterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "keywordMatching"
.end annotation


# instance fields
.field public keywords:Ljava/lang/String;

.field public keywordsLen:I

.field public position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "keywords"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    .line 24
    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywordsLen:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywords:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    .line 30
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywords:Ljava/lang/String;

    .line 31
    if-eqz p1, :cond_17

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywordsLen:I

    .line 34
    :cond_17
    const-string v0, "VMusicSearchTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keywordMatching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywordsLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
