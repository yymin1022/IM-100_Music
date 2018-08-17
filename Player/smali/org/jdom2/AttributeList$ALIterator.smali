.class final Lorg/jdom2/AttributeList$ALIterator;
.super Ljava/lang/Object;
.source "AttributeList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/AttributeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ALIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/jdom2/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field private canremove:Z

.field private cursor:I

.field private expect:I

.field final synthetic this$0:Lorg/jdom2/AttributeList;


# direct methods
.method private constructor <init>(Lorg/jdom2/AttributeList;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 623
    iput-object p1, p0, Lorg/jdom2/AttributeList$ALIterator;->this$0:Lorg/jdom2/AttributeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom2/AttributeList$ALIterator;->expect:I

    .line 619
    iput v1, p0, Lorg/jdom2/AttributeList$ALIterator;->cursor:I

    .line 621
    iput-boolean v1, p0, Lorg/jdom2/AttributeList$ALIterator;->canremove:Z

    .line 624
    invoke-static {p1}, Lorg/jdom2/AttributeList;->access$100(Lorg/jdom2/AttributeList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/AttributeList$ALIterator;->expect:I

    .line 625
    return-void
.end method

.method synthetic constructor <init>(Lorg/jdom2/AttributeList;Lorg/jdom2/AttributeList$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/AttributeList;
    .param p2, "x1"    # Lorg/jdom2/AttributeList$1;

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lorg/jdom2/AttributeList$ALIterator;-><init>(Lorg/jdom2/AttributeList;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 629
    iget v0, p0, Lorg/jdom2/AttributeList$ALIterator;->cursor:I

    iget-object v1, p0, Lorg/jdom2/AttributeList$ALIterator;->this$0:Lorg/jdom2/AttributeList;

    invoke-static {v1}, Lorg/jdom2/AttributeList;->access$200(Lorg/jdom2/AttributeList;)I

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
    .line 615
    invoke-virtual {p0}, Lorg/jdom2/AttributeList$ALIterator;->next()Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jdom2/Attribute;
    .registers 4

    .prologue
    .line 634
    iget-object v0, p0, Lorg/jdom2/AttributeList$ALIterator;->this$0:Lorg/jdom2/AttributeList;

    invoke-static {v0}, Lorg/jdom2/AttributeList;->access$300(Lorg/jdom2/AttributeList;)I

    move-result v0

    iget v1, p0, Lorg/jdom2/AttributeList$ALIterator;->expect:I

    if-eq v0, v1, :cond_12

    .line 635
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "ContentList was modified outside of this Iterator"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_12
    iget v0, p0, Lorg/jdom2/AttributeList$ALIterator;->cursor:I

    iget-object v1, p0, Lorg/jdom2/AttributeList$ALIterator;->this$0:Lorg/jdom2/AttributeList;

    invoke-static {v1}, Lorg/jdom2/AttributeList;->access$200(Lorg/jdom2/AttributeList;)I

    move-result v1

    if-lt v0, v1, :cond_24

    .line 639
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterated beyond the end of the ContentList."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/AttributeList$ALIterator;->canremove:Z

    .line 643
    iget-object v0, p0, Lorg/jdom2/AttributeList$ALIterator;->this$0:Lorg/jdom2/AttributeList;

    invoke-static {v0}, Lorg/jdom2/AttributeList;->access$400(Lorg/jdom2/AttributeList;)[Lorg/jdom2/Attribute;

    move-result-object v0

    iget v1, p0, Lorg/jdom2/AttributeList$ALIterator;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/AttributeList$ALIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 648
    iget-object v0, p0, Lorg/jdom2/AttributeList$ALIterator;->this$0:Lorg/jdom2/AttributeList;

    invoke-static {v0}, Lorg/jdom2/AttributeList;->access$500(Lorg/jdom2/AttributeList;)I

    move-result v0

    iget v1, p0, Lorg/jdom2/AttributeList$ALIterator;->expect:I

    if-eq v0, v1, :cond_12

    .line 649
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "ContentList was modified outside of this Iterator"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_12
    iget-boolean v0, p0, Lorg/jdom2/AttributeList$ALIterator;->canremove:Z

    if-nez v0, :cond_1e

    .line 653
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only remove() content after a call to next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1e
    iget-object v0, p0, Lorg/jdom2/AttributeList$ALIterator;->this$0:Lorg/jdom2/AttributeList;

    iget v1, p0, Lorg/jdom2/AttributeList$ALIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jdom2/AttributeList$ALIterator;->cursor:I

    invoke-virtual {v0, v1}, Lorg/jdom2/AttributeList;->remove(I)Lorg/jdom2/Attribute;

    .line 657
    iget-object v0, p0, Lorg/jdom2/AttributeList$ALIterator;->this$0:Lorg/jdom2/AttributeList;

    invoke-static {v0}, Lorg/jdom2/AttributeList;->access$600(Lorg/jdom2/AttributeList;)I

    move-result v0

    iput v0, p0, Lorg/jdom2/AttributeList$ALIterator;->expect:I

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/AttributeList$ALIterator;->canremove:Z

    .line 659
    return-void
.end method
