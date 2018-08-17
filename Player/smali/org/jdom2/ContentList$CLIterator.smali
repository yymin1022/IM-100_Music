.class final Lorg/jdom2/ContentList$CLIterator;
.super Ljava/lang/Object;
.source "ContentList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CLIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/jdom2/Content;",
        ">;"
    }
.end annotation


# instance fields
.field private canremove:Z

.field private cursor:I

.field private expect:I

.field final synthetic this$0:Lorg/jdom2/ContentList;


# direct methods
.method private constructor <init>(Lorg/jdom2/ContentList;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 642
    iput-object p1, p0, Lorg/jdom2/ContentList$CLIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom2/ContentList$CLIterator;->expect:I

    .line 639
    iput v1, p0, Lorg/jdom2/ContentList$CLIterator;->cursor:I

    .line 640
    iput-boolean v1, p0, Lorg/jdom2/ContentList$CLIterator;->canremove:Z

    .line 643
    invoke-static {p1}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/ContentList$CLIterator;->expect:I

    .line 644
    return-void
.end method

.method synthetic constructor <init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/ContentList;
    .param p2, "x1"    # Lorg/jdom2/ContentList$1;

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$CLIterator;-><init>(Lorg/jdom2/ContentList;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 648
    iget v0, p0, Lorg/jdom2/ContentList$CLIterator;->cursor:I

    iget-object v1, p0, Lorg/jdom2/ContentList$CLIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lorg/jdom2/ContentList$CLIterator;->next()Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jdom2/Content;
    .registers 4

    .prologue
    .line 653
    iget-object v0, p0, Lorg/jdom2/ContentList$CLIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v0

    iget v1, p0, Lorg/jdom2/ContentList$CLIterator;->expect:I

    if-eq v0, v1, :cond_12

    .line 654
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "ContentList was modified outside of this Iterator"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_12
    iget v0, p0, Lorg/jdom2/ContentList$CLIterator;->cursor:I

    iget-object v1, p0, Lorg/jdom2/ContentList$CLIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-lt v0, v1, :cond_24

    .line 658
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterated beyond the end of the ContentList."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/ContentList$CLIterator;->canremove:Z

    .line 662
    iget-object v0, p0, Lorg/jdom2/ContentList$CLIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v0

    iget v1, p0, Lorg/jdom2/ContentList$CLIterator;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/ContentList$CLIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 667
    iget-object v0, p0, Lorg/jdom2/ContentList$CLIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v0

    iget v1, p0, Lorg/jdom2/ContentList$CLIterator;->expect:I

    if-eq v0, v1, :cond_12

    .line 668
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "ContentList was modified outside of this Iterator"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_12
    iget-boolean v0, p0, Lorg/jdom2/ContentList$CLIterator;->canremove:Z

    if-nez v0, :cond_1e

    .line 672
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only remove() content after a call to next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/ContentList$CLIterator;->canremove:Z

    .line 676
    iget-object v0, p0, Lorg/jdom2/ContentList$CLIterator;->this$0:Lorg/jdom2/ContentList;

    iget v1, p0, Lorg/jdom2/ContentList$CLIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jdom2/ContentList$CLIterator;->cursor:I

    invoke-virtual {v0, v1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    .line 677
    iget-object v0, p0, Lorg/jdom2/ContentList$CLIterator;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/ContentList$CLIterator;->expect:I

    .line 678
    return-void
.end method
