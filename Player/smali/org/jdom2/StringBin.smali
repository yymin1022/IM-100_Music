.class final Lorg/jdom2/StringBin;
.super Ljava/lang/Object;
.source "StringBin.java"


# static fields
.field private static final DEFAULTCAP:I = 0x3ff

.field private static final GROW:I = 0x4

.field private static final MAXBUCKET:I = 0x40


# instance fields
.field private buckets:[[Ljava/lang/String;

.field private lengths:[I

.field private mask:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 124
    const/16 v0, 0x3ff

    invoke-direct {p0, v0}, Lorg/jdom2/StringBin;-><init>(I)V

    .line 125
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "capacity"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lorg/jdom2/StringBin;->mask:I

    .line 132
    if-gez p1, :cond_10

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not have a negative capacity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_10
    add-int/lit8 p1, p1, -0x1

    .line 136
    const/16 v1, 0x3ff

    if-ge p1, v1, :cond_18

    .line 137
    const/16 p1, 0x3ff

    .line 140
    :cond_18
    div-int/lit8 p1, p1, 0x3

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "shift":I
    :goto_1b
    if-eqz p1, :cond_22

    .line 143
    ushr-int/lit8 p1, p1, 0x1

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 146
    :cond_22
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jdom2/StringBin;->mask:I

    .line 147
    iget v1, p0, Lorg/jdom2/StringBin;->mask:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[Ljava/lang/String;

    iput-object v1, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jdom2/StringBin;->lengths:[I

    .line 149
    return-void
.end method

.method private static final compact(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private final locate(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 10
    .param p1, "hash"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "bucket"    # [Ljava/lang/String;
    .param p4, "length"    # I

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, "left":I
    add-int/lit8 v3, p4, -0x1

    .line 164
    .local v3, "right":I
    const/4 v2, 0x0

    .line 165
    .local v2, "mid":I
    :goto_4
    if-gt v1, v3, :cond_70

    .line 166
    add-int v4, v1, v3

    ushr-int/lit8 v2, v4, 0x1

    .line 167
    aget-object v4, p3, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-le v4, p1, :cond_15

    .line 168
    add-int/lit8 v3, v2, -0x1

    goto :goto_4

    .line 169
    :cond_15
    aget-object v4, p3, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ge v4, p1, :cond_20

    .line 170
    add-int/lit8 v1, v2, 0x1

    goto :goto_4

    .line 174
    :cond_20
    aget-object v4, p3, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, "cmp":I
    if-nez v0, :cond_2a

    move v4, v2

    .line 227
    .end local v0    # "cmp":I
    :goto_29
    return v4

    .line 178
    .restart local v0    # "cmp":I
    :cond_2a
    if-gez v0, :cond_50

    .line 181
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_4a

    aget-object v4, p3, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, p1, :cond_4a

    .line 184
    aget-object v4, p3, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 185
    if-nez v0, :cond_42

    move v4, v2

    .line 187
    goto :goto_29

    .line 188
    :cond_42
    if-lez v0, :cond_2c

    .line 195
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    .line 200
    :cond_4a
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    .line 204
    :cond_50
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v3, :cond_6c

    aget-object v4, p3, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, p1, :cond_6c

    .line 206
    aget-object v4, p3, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 207
    if-nez v0, :cond_66

    move v4, v2

    .line 209
    goto :goto_29

    .line 210
    :cond_66
    if-gez v0, :cond_50

    .line 217
    neg-int v4, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    .line 222
    :cond_6c
    neg-int v4, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    .line 227
    .end local v0    # "cmp":I
    :cond_70
    neg-int v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_29
.end method

.method private rehash()V
    .registers 16

    .prologue
    .line 329
    iget-object v10, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    .line 331
    .local v10, "olddata":[[Ljava/lang/String;
    iget v12, p0, Lorg/jdom2/StringBin;->mask:I

    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lorg/jdom2/StringBin;->mask:I

    .line 332
    iget v12, p0, Lorg/jdom2/StringBin;->mask:I

    add-int/lit8 v12, v12, 0x1

    new-array v12, v12, [[Ljava/lang/String;

    iput-object v12, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    .line 333
    iget-object v12, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    array-length v12, v12

    new-array v12, v12, [I

    iput-object v12, p0, Lorg/jdom2/StringBin;->lengths:[I

    .line 334
    const/4 v3, 0x0

    .local v3, "hash":I
    const/4 v2, 0x0

    .local v2, "bucketid":I
    const/4 v8, 0x0

    .line 335
    .local v8, "length":I
    move-object v0, v10

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_22
    if-ge v5, v6, :cond_85

    aget-object v9, v0, v5

    .line 336
    .local v9, "ob":[Ljava/lang/String;
    if-nez v9, :cond_2c

    .line 335
    .end local v5    # "i$":I
    :cond_28
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_22

    .line 340
    :cond_2c
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2f
    if-ge v4, v7, :cond_28

    aget-object v11, v1, v4

    .line 341
    .local v11, "val":Ljava/lang/String;
    if-eqz v11, :cond_28

    .line 345
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 346
    ushr-int/lit8 v12, v3, 0x10

    xor-int/2addr v12, v3

    iget v13, p0, Lorg/jdom2/StringBin;->mask:I

    and-int v2, v12, v13

    .line 347
    iget-object v12, p0, Lorg/jdom2/StringBin;->lengths:[I

    aget v8, v12, v2

    .line 348
    if-nez v8, :cond_63

    .line 349
    iget-object v12, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    array-length v13, v9

    add-int/lit8 v13, v13, 0x4

    div-int/lit8 v13, v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    aput-object v13, v12, v2

    .line 350
    iget-object v12, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aget-object v12, v12, v2

    const/4 v13, 0x0

    aput-object v11, v12, v13

    .line 358
    :goto_58
    iget-object v12, p0, Lorg/jdom2/StringBin;->lengths:[I

    aget v13, v12, v2

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v2

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 352
    :cond_63
    iget-object v12, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aget-object v12, v12, v2

    array-length v12, v12

    if-ne v12, v8, :cond_7e

    .line 353
    iget-object v13, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    iget-object v12, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aget-object v12, v12, v2

    iget-object v14, p0, Lorg/jdom2/StringBin;->lengths:[I

    aget v14, v14, v2

    add-int/lit8 v14, v14, 0x4

    invoke-static {v12, v14}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    aput-object v12, v13, v2

    .line 356
    :cond_7e
    iget-object v12, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aget-object v12, v12, v2

    aput-object v11, v12, v8

    goto :goto_58

    .line 361
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "ob":[Ljava/lang/String;
    .end local v11    # "val":Ljava/lang/String;
    .restart local v5    # "i$":I
    :cond_85
    return-void
.end method


# virtual methods
.method public reuse(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    if-nez p1, :cond_4

    .line 240
    const/4 v5, 0x0

    .line 308
    :goto_3
    return-object v5

    .line 242
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 273
    .local v2, "hash":I
    ushr-int/lit8 v6, v2, 0x10

    xor-int/2addr v6, v2

    iget v7, p0, Lorg/jdom2/StringBin;->mask:I

    and-int v1, v6, v7

    .line 275
    .local v1, "bucketid":I
    iget-object v6, p0, Lorg/jdom2/StringBin;->lengths:[I

    aget v4, v6, v1

    .line 276
    .local v4, "length":I
    if-nez v4, :cond_2d

    .line 278
    invoke-static {p1}, Lorg/jdom2/StringBin;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "v":Ljava/lang/String;
    iget-object v6, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    aput-object v7, v6, v1

    .line 280
    iget-object v6, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 281
    iget-object v6, p0, Lorg/jdom2/StringBin;->lengths:[I

    const/4 v7, 0x1

    aput v7, v6, v1

    goto :goto_3

    .line 286
    .end local v5    # "v":Ljava/lang/String;
    :cond_2d
    iget-object v6, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aget-object v0, v6, v1

    .line 289
    .local v0, "bucket":[Ljava/lang/String;
    invoke-direct {p0, v2, p1, v0, v4}, Lorg/jdom2/StringBin;->locate(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v6

    neg-int v6, v6

    add-int/lit8 v3, v6, -0x1

    .line 290
    .local v3, "ip":I
    if-gez v3, :cond_40

    .line 292
    neg-int v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v0, v6

    goto :goto_3

    .line 294
    :cond_40
    const/16 v6, 0x40

    if-lt v4, v6, :cond_4c

    .line 296
    invoke-direct {p0}, Lorg/jdom2/StringBin;->rehash()V

    .line 297
    invoke-virtual {p0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 299
    :cond_4c
    array-length v6, v0

    if-ne v4, v6, :cond_5b

    .line 301
    add-int/lit8 v6, v4, 0x4

    invoke-static {v0, v6}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bucket":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 302
    .restart local v0    # "bucket":[Ljava/lang/String;
    iget-object v6, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aput-object v0, v6, v1

    .line 304
    :cond_5b
    add-int/lit8 v6, v3, 0x1

    sub-int v7, v4, v3

    invoke-static {v0, v3, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    invoke-static {p1}, Lorg/jdom2/StringBin;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 306
    .restart local v5    # "v":Ljava/lang/String;
    aput-object v5, v0, v3

    .line 307
    iget-object v6, p0, Lorg/jdom2/StringBin;->lengths:[I

    aget v7, v6, v1

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v1

    goto :goto_3
.end method

.method public size()I
    .registers 6

    .prologue
    .line 382
    const/4 v4, 0x0

    .line 383
    .local v4, "sum":I
    iget-object v0, p0, Lorg/jdom2/StringBin;->lengths:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v3, :cond_d

    aget v2, v0, v1

    .line 384
    .local v2, "l":I
    add-int/2addr v4, v2

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 386
    .end local v2    # "l":I
    :cond_d
    return v4
.end method
