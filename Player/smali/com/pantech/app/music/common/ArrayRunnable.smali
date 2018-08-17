.class public Lcom/pantech/app/music/common/ArrayRunnable;
.super Ljava/lang/Object;
.source "ArrayRunnable.java"


# instance fields
.field mR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p1, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    .line 10
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 11
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    :cond_e
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Runnable;
    .param p2, "idx"    # Ljava/lang/Integer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 17
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 19
    :cond_d
    return-void
.end method

.method public getRunable(Ljava/lang/Integer;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "idx"    # Ljava/lang/Integer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public run(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "idx"    # Ljava/lang/Integer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 32
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    :cond_1f
    return-void
.end method

.method public size()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayRunnable;->mR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method
