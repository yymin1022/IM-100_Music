.class final Lorg/jdom2/ContentList$CLListIterator;
.super Ljava/lang/Object;
.source "ContentList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CLListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<",
        "Lorg/jdom2/Content;",
        ">;"
    }
.end annotation


# instance fields
.field private canremove:Z

.field private canset:Z

.field private cursor:I

.field private expectedmod:I

.field private forward:Z

.field final synthetic this$0:Lorg/jdom2/ContentList;


# direct methods
.method constructor <init>(Lorg/jdom2/ContentList;I)V
    .registers 5
    .param p2, "start"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 714
    iput-object p1, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    .line 697
    iput-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->canremove:Z

    .line 699
    iput-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->canset:Z

    .line 702
    iput v0, p0, Lorg/jdom2/ContentList$CLListIterator;->expectedmod:I

    .line 704
    iput v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    .line 715
    invoke-static {p1}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/ContentList$CLListIterator;->expectedmod:I

    .line 718
    iput-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    .line 720
    invoke-static {p1, p2, v1}, Lorg/jdom2/ContentList;->access$400(Lorg/jdom2/ContentList;IZ)V

    .line 722
    iput p2, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    .line 723
    return-void
.end method

.method private checkConcurrent()V
    .registers 3

    .prologue
    .line 726
    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->expectedmod:I

    iget-object v1, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 727
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "The ContentList supporting this iterator has been modified bysomething other than this Iterator."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_12
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 693
    check-cast p1, Lorg/jdom2/Content;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList$CLListIterator;->add(Lorg/jdom2/Content;)V

    return-void
.end method

.method public add(Lorg/jdom2/Content;)V
    .registers 4
    .param p1, "obj"    # Lorg/jdom2/Content;

    .prologue
    .line 812
    invoke-direct {p0}, Lorg/jdom2/ContentList$CLListIterator;->checkConcurrent()V

    .line 814
    iget-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    if-eqz v1, :cond_23

    iget v1, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    add-int/lit8 v0, v1, 0x1

    .line 816
    .local v0, "next":I
    :goto_b
    iget-object v1, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    .line 818
    iget-object v1, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v1

    iput v1, p0, Lorg/jdom2/ContentList$CLListIterator;->expectedmod:I

    .line 820
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->canset:Z

    iput-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->canremove:Z

    .line 827
    iput v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    .line 828
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    .line 829
    return-void

    .line 814
    .end local v0    # "next":I
    :cond_23
    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    goto :goto_b
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 738
    iget-boolean v0, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    :goto_8
    iget-object v1, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-ge v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    goto :goto_8

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 747
    iget-boolean v0, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    :goto_6
    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 693
    invoke-virtual {p0}, Lorg/jdom2/ContentList$CLListIterator;->next()Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jdom2/Content;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 774
    invoke-direct {p0}, Lorg/jdom2/ContentList$CLListIterator;->checkConcurrent()V

    .line 775
    iget-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    if-eqz v1, :cond_1c

    iget v1, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    add-int/lit8 v0, v1, 0x1

    .line 777
    .local v0, "next":I
    :goto_c
    iget-object v1, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-lt v0, v1, :cond_1f

    .line 778
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "next() is beyond the end of the Iterator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 775
    .end local v0    # "next":I
    :cond_1c
    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    goto :goto_c

    .line 781
    .restart local v0    # "next":I
    :cond_1f
    iput v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    .line 782
    iput-boolean v2, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    .line 783
    iput-boolean v2, p0, Lorg/jdom2/ContentList$CLListIterator;->canremove:Z

    .line 784
    iput-boolean v2, p0, Lorg/jdom2/ContentList$CLListIterator;->canset:Z

    .line 785
    iget-object v1, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v1

    iget v2, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    aget-object v1, v1, v2

    return-object v1
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 756
    iget-boolean v0, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    goto :goto_8
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 693
    invoke-virtual {p0}, Lorg/jdom2/ContentList$CLListIterator;->previous()Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lorg/jdom2/Content;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 793
    invoke-direct {p0}, Lorg/jdom2/ContentList$CLListIterator;->checkConcurrent()V

    .line 794
    iget-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    if-eqz v1, :cond_14

    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    .line 796
    .local v0, "prev":I
    :goto_a
    if-gez v0, :cond_19

    .line 797
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "previous() is beyond the beginning of the Iterator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 794
    .end local v0    # "prev":I
    :cond_14
    iget v1, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_a

    .line 800
    .restart local v0    # "prev":I
    :cond_19
    iput v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    .line 801
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    .line 802
    iput-boolean v2, p0, Lorg/jdom2/ContentList$CLListIterator;->canremove:Z

    .line 803
    iput-boolean v2, p0, Lorg/jdom2/ContentList$CLListIterator;->canset:Z

    .line 804
    iget-object v1, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v1

    iget v2, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    aget-object v1, v1, v2

    return-object v1
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 766
    iget-boolean v0, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public remove()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 837
    invoke-direct {p0}, Lorg/jdom2/ContentList$CLListIterator;->checkConcurrent()V

    .line 838
    iget-boolean v0, p0, Lorg/jdom2/ContentList$CLListIterator;->canremove:Z

    if-nez v0, :cond_10

    .line 839
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not remove an element unless either next() or previous() has been called since the last remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_10
    iget-object v0, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    iget v1, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    invoke-virtual {v0, v1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    .line 849
    iput-boolean v2, p0, Lorg/jdom2/ContentList$CLListIterator;->forward:Z

    .line 850
    iget-object v0, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/ContentList$CLListIterator;->expectedmod:I

    .line 852
    iput-boolean v2, p0, Lorg/jdom2/ContentList$CLListIterator;->canremove:Z

    .line 853
    iput-boolean v2, p0, Lorg/jdom2/ContentList$CLListIterator;->canset:Z

    .line 854
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 693
    check-cast p1, Lorg/jdom2/Content;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList$CLListIterator;->set(Lorg/jdom2/Content;)V

    return-void
.end method

.method public set(Lorg/jdom2/Content;)V
    .registers 4
    .param p1, "obj"    # Lorg/jdom2/Content;

    .prologue
    .line 862
    invoke-direct {p0}, Lorg/jdom2/ContentList$CLListIterator;->checkConcurrent()V

    .line 863
    iget-boolean v0, p0, Lorg/jdom2/ContentList$CLListIterator;->canset:Z

    if-nez v0, :cond_f

    .line 864
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not set an element unless either next() or previous() has been called since the last remove() or set()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_f
    iget-object v0, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    iget v1, p0, Lorg/jdom2/ContentList$CLListIterator;->cursor:I

    invoke-virtual {v0, v1, p1}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    .line 870
    iget-object v0, p0, Lorg/jdom2/ContentList$CLListIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/ContentList$CLListIterator;->expectedmod:I

    .line 872
    return-void
.end method
