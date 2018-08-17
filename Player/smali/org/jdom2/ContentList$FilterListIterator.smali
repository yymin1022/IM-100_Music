.class final Lorg/jdom2/ContentList$FilterListIterator;
.super Ljava/lang/Object;
.source "ContentList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FilterListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lorg/jdom2/Content;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TF;>;"
    }
.end annotation


# instance fields
.field private canremove:Z

.field private canset:Z

.field private cursor:I

.field private expectedmod:I

.field private final filterlist:Lorg/jdom2/ContentList$FilterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/ContentList$FilterList",
            "<TF;>;"
        }
    .end annotation
.end field

.field private forward:Z

.field final synthetic this$0:Lorg/jdom2/ContentList;


# direct methods
.method constructor <init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$FilterList;I)V
    .registers 8
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/ContentList$FilterList",
            "<TF;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    .local p2, "flist":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1268
    iput-object p1, p0, Lorg/jdom2/ContentList$FilterListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    iput-boolean v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    .line 1251
    iput-boolean v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->canremove:Z

    .line 1253
    iput-boolean v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->canset:Z

    .line 1256
    iput v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->expectedmod:I

    .line 1258
    iput v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    .line 1269
    iput-object p2, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    .line 1270
    invoke-static {p1}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v1

    iput v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->expectedmod:I

    .line 1273
    iput-boolean v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    .line 1275
    if-gez p3, :cond_46

    .line 1276
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    invoke-virtual {v3}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1279
    :cond_46
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    invoke-static {v1, p3}, Lorg/jdom2/ContentList$FilterList;->access$800(Lorg/jdom2/ContentList$FilterList;I)I

    move-result v0

    .line 1281
    .local v0, "adj":I
    invoke-static {p1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-ne v0, v1, :cond_83

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    if-le p3, v1, :cond_83

    .line 1284
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    invoke-virtual {v3}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1287
    :cond_83
    iput p3, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    .line 1288
    return-void
.end method

.method private checkConcurrent()V
    .registers 3

    .prologue
    .line 1291
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->expectedmod:I

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 1292
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "The ContentList supporting the FilterList this iterator is processing has been modified by something other than this Iterator."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1297
    :cond_12
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1243
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    check-cast p1, Lorg/jdom2/Content;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList$FilterListIterator;->add(Lorg/jdom2/Content;)V

    return-void
.end method

.method public add(Lorg/jdom2/Content;)V
    .registers 4
    .param p1, "obj"    # Lorg/jdom2/Content;

    .prologue
    .line 1378
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    invoke-direct {p0}, Lorg/jdom2/ContentList$FilterListIterator;->checkConcurrent()V

    .line 1380
    iget-boolean v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    if-eqz v1, :cond_23

    iget v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v1, 0x1

    .line 1382
    .local v0, "next":I
    :goto_b
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom2/ContentList$FilterList;->add(ILorg/jdom2/Content;)V

    .line 1384
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v1

    iput v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->expectedmod:I

    .line 1386
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->canset:Z

    iput-boolean v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->canremove:Z

    .line 1393
    iput v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    .line 1394
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    .line 1395
    return-void

    .line 1380
    .end local v0    # "next":I
    :cond_23
    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    goto :goto_b
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 1304
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    iget-boolean v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    :goto_a
    invoke-static {v1, v0}, Lorg/jdom2/ContentList$FilterList;->access$800(Lorg/jdom2/ContentList$FilterList;I)I

    move-result v0

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-ge v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    goto :goto_a

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 1313
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    iget-boolean v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    :goto_6
    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1243
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterListIterator;->next()Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jdom2/Content;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    const/4 v3, 0x1

    .line 1340
    invoke-direct {p0}, Lorg/jdom2/ContentList$FilterListIterator;->checkConcurrent()V

    .line 1341
    iget-boolean v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    if-eqz v1, :cond_22

    iget v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v1, 0x1

    .line 1343
    .local v0, "next":I
    :goto_c
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    invoke-static {v1, v0}, Lorg/jdom2/ContentList$FilterList;->access$800(Lorg/jdom2/ContentList$FilterList;I)I

    move-result v1

    iget-object v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v2

    if-lt v1, v2, :cond_25

    .line 1344
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "next() is beyond the end of the Iterator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1341
    .end local v0    # "next":I
    :cond_22
    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    goto :goto_c

    .line 1347
    .restart local v0    # "next":I
    :cond_25
    iput v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    .line 1348
    iput-boolean v3, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    .line 1349
    iput-boolean v3, p0, Lorg/jdom2/ContentList$FilterListIterator;->canremove:Z

    .line 1350
    iput-boolean v3, p0, Lorg/jdom2/ContentList$FilterListIterator;->canset:Z

    .line 1351
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    iget v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v1, v2}, Lorg/jdom2/ContentList$FilterList;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    return-object v1
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 1322
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    iget-boolean v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    goto :goto_8
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1243
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterListIterator;->previous()Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lorg/jdom2/Content;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    const/4 v2, 0x1

    .line 1359
    invoke-direct {p0}, Lorg/jdom2/ContentList$FilterListIterator;->checkConcurrent()V

    .line 1360
    iget-boolean v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    if-eqz v1, :cond_14

    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    .line 1362
    .local v0, "prev":I
    :goto_a
    if-gez v0, :cond_19

    .line 1363
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "previous() is beyond the beginning of the Iterator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1360
    .end local v0    # "prev":I
    :cond_14
    iget v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_a

    .line 1366
    .restart local v0    # "prev":I
    :cond_19
    iput v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    .line 1367
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    .line 1368
    iput-boolean v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->canremove:Z

    .line 1369
    iput-boolean v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->canset:Z

    .line 1370
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    iget v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v1, v2}, Lorg/jdom2/ContentList$FilterList;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    return-object v1
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 1332
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    iget-boolean v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public remove()V
    .registers 4

    .prologue
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    const/4 v2, 0x0

    .line 1403
    invoke-direct {p0}, Lorg/jdom2/ContentList$FilterListIterator;->checkConcurrent()V

    .line 1404
    iget-boolean v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->canremove:Z

    if-nez v0, :cond_10

    .line 1405
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not remove an element unless either next() or previous() has been called since the last remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_10
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    iget v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v0, v1}, Lorg/jdom2/ContentList$FilterList;->remove(I)Lorg/jdom2/Content;

    .line 1415
    iput-boolean v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->forward:Z

    .line 1416
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->expectedmod:I

    .line 1418
    iput-boolean v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->canremove:Z

    .line 1419
    iput-boolean v2, p0, Lorg/jdom2/ContentList$FilterListIterator;->canset:Z

    .line 1420
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1243
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    check-cast p1, Lorg/jdom2/Content;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList$FilterListIterator;->set(Lorg/jdom2/Content;)V

    return-void
.end method

.method public set(Lorg/jdom2/Content;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p0, "this":Lorg/jdom2/ContentList$FilterListIterator;, "Lorg/jdom2/ContentList$FilterListIterator<TF;>;"
    .local p1, "obj":Lorg/jdom2/Content;, "TF;"
    invoke-direct {p0}, Lorg/jdom2/ContentList$FilterListIterator;->checkConcurrent()V

    .line 1429
    iget-boolean v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->canset:Z

    if-nez v0, :cond_f

    .line 1430
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not set an element unless either next() or previous() has been called since the last remove() or set()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1435
    :cond_f
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->filterlist:Lorg/jdom2/ContentList$FilterList;

    iget v1, p0, Lorg/jdom2/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v0, v1, p1}, Lorg/jdom2/ContentList$FilterList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    .line 1436
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/ContentList$FilterListIterator;->expectedmod:I

    .line 1438
    return-void
.end method
