.class public final Lorg/jdom2/internal/ArrayCopy;
.super Ljava/lang/Object;
.source "ArrayCopy.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static final copyOf([CI)[C
    .registers 5
    .param p0, "source"    # [C
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 113
    new-array v0, p1, [C

    .line 114
    .local v0, "dest":[C
    array-length v1, p0

    if-ge p1, v1, :cond_a

    .end local p1    # "len":I
    :goto_6
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-object v0

    .line 114
    .restart local p1    # "len":I
    :cond_a
    array-length p1, p0

    goto :goto_6
.end method

.method public static final copyOf([II)[I
    .registers 5
    .param p0, "source"    # [I
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 125
    new-array v0, p1, [I

    .line 126
    .local v0, "dest":[I
    array-length v1, p0

    if-ge p1, v1, :cond_a

    .end local p1    # "len":I
    :goto_6
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    return-object v0

    .line 126
    .restart local p1    # "len":I
    :cond_a
    array-length p1, p0

    goto :goto_6
.end method

.method public static final copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;I)[TE;"
        }
    .end annotation

    .prologue
    .local p0, "source":[Ljava/lang/Object;, "[TE;"
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 82
    .local v0, "dest":[Ljava/lang/Object;, "[TE;"
    array-length v1, p0

    if-ge p1, v1, :cond_19

    .end local p1    # "len":I
    :goto_15
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    return-object v0

    .line 82
    .restart local p1    # "len":I
    :cond_19
    array-length p1, p0

    goto :goto_15
.end method

.method public static final copyOf([ZI)[Z
    .registers 5
    .param p0, "source"    # [Z
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 137
    new-array v0, p1, [Z

    .line 138
    .local v0, "dest":[Z
    array-length v1, p0

    if-ge p1, v1, :cond_a

    .end local p1    # "len":I
    :goto_6
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    return-object v0

    .line 138
    .restart local p1    # "len":I
    :cond_a
    array-length p1, p0

    goto :goto_6
.end method

.method public static final copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 9
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;II)[TE;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "source":[Ljava/lang/Object;, "[TE;"
    sub-int v1, p2, p1

    .line 96
    .local v1, "len":I
    if-gez v1, :cond_2d

    .line 97
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "From("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") > To ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 101
    .local v0, "dest":[Ljava/lang/Object;, "[TE;"
    add-int v3, p1, v1

    array-length v4, p0

    if-le v3, v4, :cond_4b

    array-length v3, p0

    sub-int v2, v3, p1

    .line 102
    .local v2, "tocopy":I
    :goto_46
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    return-object v0

    .end local v2    # "tocopy":I
    :cond_4b
    move v2, v1

    .line 101
    goto :goto_46
.end method
