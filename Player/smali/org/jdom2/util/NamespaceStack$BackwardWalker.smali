.class final Lorg/jdom2/util/NamespaceStack$BackwardWalker;
.super Ljava/lang/Object;
.source "NamespaceStack.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/util/NamespaceStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackwardWalker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/jdom2/Namespace;",
        ">;"
    }
.end annotation


# instance fields
.field cursor:I

.field private final namespaces:[Lorg/jdom2/Namespace;


# direct methods
.method public constructor <init>([Lorg/jdom2/Namespace;)V
    .registers 3
    .param p1, "namespaces"    # [Lorg/jdom2/Namespace;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom2/util/NamespaceStack$BackwardWalker;->cursor:I

    .line 152
    iput-object p1, p0, Lorg/jdom2/util/NamespaceStack$BackwardWalker;->namespaces:[Lorg/jdom2/Namespace;

    .line 153
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom2/util/NamespaceStack$BackwardWalker;->cursor:I

    .line 154
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lorg/jdom2/util/NamespaceStack$BackwardWalker;->cursor:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/jdom2/util/NamespaceStack$BackwardWalker;->next()Lorg/jdom2/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jdom2/Namespace;
    .registers 4

    .prologue
    .line 163
    iget v0, p0, Lorg/jdom2/util/NamespaceStack$BackwardWalker;->cursor:I

    if-gez v0, :cond_c

    .line 164
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot over-iterate..."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_c
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack$BackwardWalker;->namespaces:[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack$BackwardWalker;->cursor:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jdom2/util/NamespaceStack$BackwardWalker;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove Namespaces from iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
