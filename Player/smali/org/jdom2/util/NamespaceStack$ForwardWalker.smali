.class final Lorg/jdom2/util/NamespaceStack$ForwardWalker;
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
    name = "ForwardWalker"
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
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->cursor:I

    .line 116
    iput-object p1, p0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->namespaces:[Lorg/jdom2/Namespace;

    .line 117
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 121
    iget v0, p0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->cursor:I

    iget-object v1, p0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->namespaces:[Lorg/jdom2/Namespace;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->next()Lorg/jdom2/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jdom2/Namespace;
    .registers 4

    .prologue
    .line 126
    iget v0, p0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->cursor:I

    iget-object v1, p0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->namespaces:[Lorg/jdom2/Namespace;

    array-length v1, v1

    if-lt v0, v1, :cond_f

    .line 127
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot over-iterate..."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_f
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->namespaces:[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove Namespaces from iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
