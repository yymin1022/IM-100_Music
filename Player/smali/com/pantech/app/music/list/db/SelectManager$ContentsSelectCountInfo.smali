.class public Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;
.super Ljava/lang/Object;
.source "SelectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/SelectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentsSelectCountInfo"
.end annotation


# instance fields
.field public final mAllContentsCount:I

.field public final mAllSelectedCount:I

.field public final mParentSelectedCount:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "allContentsCount"    # I
    .param p2, "allSelectedCount"    # I
    .param p3, "parentSelectedCount"    # I

    .prologue
    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput p1, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllContentsCount:I

    .line 922
    iput p2, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllSelectedCount:I

    .line 923
    iput p3, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mParentSelectedCount:I

    .line 924
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllContentsCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllContentsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAllSelectedCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllSelectedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mParentSelectedCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllContentsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
