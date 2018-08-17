.class public Lcom/pantech/app/music/common/ArrayListCursor;
.super Landroid/database/AbstractCursor;
.source "ArrayListCursor.java"


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mRows:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .param p1, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .line 24
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 25
    array-length v0, p1

    .line 26
    .local v0, "colCount":I
    const/4 v1, 0x0

    .line 28
    .local v1, "foundID":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 29
    aget-object v4, p1, v2

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4f

    .line 30
    iput-object p1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    .line 36
    :cond_16
    if-nez v1, :cond_2a

    .line 37
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 38
    iget-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v5, p1

    invoke-static {p1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v0

    .line 42
    :cond_2a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 43
    .local v3, "rowCount":I
    new-array v4, v3, [Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 45
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v3, :cond_52

    .line 46
    iget-object v5, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v5, v2

    .line 47
    if-nez v1, :cond_4c

    .line 48
    iget-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 28
    .end local v3    # "rowCount":I
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 51
    .restart local v3    # "rowCount":I
    :cond_52
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/util/ArrayList;Z)V
    .registers 7
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p3, "cloned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "rows":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 16
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    array-length v0, p2

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 20
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    return-void
.end method


# virtual methods
.method public Append(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    if-nez v3, :cond_1a

    const/4 v2, 0x0

    .line 236
    .local v2, "rowCount":I
    :goto_5
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Ljava/util/ArrayList;

    .line 238
    .local v1, "mNewRows":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_1e

    .line 239
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    .line 241
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 235
    .end local v0    # "i":I
    .end local v1    # "mNewRows":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "rowCount":I
    :cond_1a
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v2, v3

    goto :goto_5

    .line 243
    .restart local v0    # "i":I
    .restart local v1    # "mNewRows":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2    # "rowCount":I
    :cond_1e
    aput-object p1, v1, v2

    .line 244
    iput-object v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 246
    const/4 v3, 0x1

    return v3
.end method

.method public Delete(I)Z
    .registers 8
    .param p1, "row"    # I

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v5, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    if-nez v5, :cond_a

    move v3, v4

    .line 252
    .local v3, "rowCount":I
    :goto_6
    const/4 v1, 0x0

    .line 254
    .local v1, "iNewIndex":I
    if-gtz v3, :cond_e

    .line 269
    :goto_9
    return v4

    .line 250
    .end local v1    # "iNewIndex":I
    .end local v3    # "rowCount":I
    :cond_a
    iget-object v5, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v3, v5

    goto :goto_6

    .line 257
    .restart local v1    # "iNewIndex":I
    .restart local v3    # "rowCount":I
    :cond_e
    add-int/lit8 v4, v3, -0x1

    new-array v2, v4, [Ljava/util/ArrayList;

    .line 258
    .local v2, "mNewRows":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v3, :cond_2f

    .line 259
    if-eq v0, p1, :cond_27

    .line 260
    iget-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    aput-object v4, v2, v1

    .line 261
    add-int/lit8 v1, v1, 0x1

    .line 265
    :goto_1f
    iget-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 263
    :cond_27
    iget-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1f

    .line 267
    :cond_2f
    iput-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 269
    const/4 v4, 0x1

    goto :goto_9
.end method

.method public DeleteAll()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 273
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    if-nez v3, :cond_b

    move v1, v2

    .line 274
    .local v1, "rowCount":I
    :goto_7
    const/4 v0, 0x0

    .line 276
    .local v0, "i":I
    if-gtz v1, :cond_f

    .line 287
    :goto_a
    return v1

    .line 273
    .end local v0    # "i":I
    .end local v1    # "rowCount":I
    :cond_b
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v1, v3

    goto :goto_7

    .line 279
    .restart local v0    # "i":I
    .restart local v1    # "rowCount":I
    :cond_f
    :goto_f
    if-ge v0, v1, :cond_1f

    .line 280
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 281
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aput-object v4, v3, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 284
    :cond_1f
    iput-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 285
    iput v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mPos:I

    goto :goto_a
.end method

.method public Exchange(II)Z
    .registers 7
    .param p1, "iFirst"    # I
    .param p2, "iSecond"    # I

    .prologue
    .line 195
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v1, v3

    .line 197
    .local v1, "iSize":I
    if-ltz p1, :cond_b

    if-ltz p2, :cond_b

    if-le v1, p1, :cond_b

    if-gt v1, p2, :cond_d

    .line 198
    :cond_b
    const/4 v3, 0x0

    .line 206
    :goto_c
    return v3

    .line 200
    :cond_d
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v0, v3, p1

    .line 201
    .local v0, "first":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v2, v3, p2

    .line 203
    .local v2, "second":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aput-object v2, v3, p1

    .line 204
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aput-object v0, v3, p2

    .line 206
    const/4 v3, 0x1

    goto :goto_c
.end method

.method public ExchangeForRearrange(II)Z
    .registers 8
    .param p1, "iFrom"    # I
    .param p2, "iTo"    # I

    .prologue
    .line 210
    iget-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v1, v2

    .line 213
    .local v1, "iSize":I
    if-ltz p1, :cond_b

    if-ltz p2, :cond_b

    if-le v1, p1, :cond_b

    if-gt v1, p2, :cond_d

    .line 214
    :cond_b
    const/4 v2, 0x0

    .line 230
    :goto_c
    return v2

    .line 216
    :cond_d
    iget-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v0, v2, p1

    .line 217
    .local v0, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-ge p1, p2, :cond_22

    .line 218
    :goto_13
    if-ge p1, p2, :cond_31

    .line 219
    iget-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, p1

    .line 220
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    .line 223
    :cond_22
    :goto_22
    if-le p1, p2, :cond_31

    .line 224
    iget-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aput-object v3, v2, p1

    .line 225
    add-int/lit8 p1, p1, -0x1

    goto :goto_22

    .line 228
    :cond_31
    iget-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aput-object v0, v2, p2

    .line 230
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public clearAll()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 69
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    if-nez v3, :cond_11

    move v1, v2

    .line 70
    .local v1, "iSize":I
    :goto_7
    const/4 v0, 0x0

    .line 71
    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_15

    .line 72
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    aput-object v4, v3, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 69
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_11
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v1, v3

    goto :goto_7

    .line 75
    .restart local v0    # "i":I
    .restart local v1    # "iSize":I
    :cond_15
    iput-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    if-nez v3, :cond_2d

    move v1, v2

    .line 78
    :goto_1c
    const/4 v0, 0x0

    .line 79
    :goto_1d
    if-ge v0, v1, :cond_31

    .line 80
    iget-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aput-object v4, v2, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 77
    :cond_2d
    iget-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v1, v2

    goto :goto_1c

    .line 84
    :cond_31
    iput-object v4, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->close()V

    .line 86
    return-void
.end method

.method public clone()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 62
    new-instance v0, Lcom/pantech/app/music/common/ArrayListCursor;

    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;[Ljava/util/ArrayList;Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->clone()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 90
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->getCount()I

    move-result v6

    if-le p1, v6, :cond_9

    .line 134
    :cond_8
    :goto_8
    return-void

    .line 94
    :cond_9
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 96
    :try_start_c
    iget v5, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mPos:I

    .line 97
    .local v5, "oldpos":I
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mPos:I

    .line 98
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 99
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->getColumnCount()I

    move-result v1

    .line 101
    .local v1, "columnNum":I
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 102
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 103
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c
    if-ge v4, v1, :cond_1f

    .line 104
    iget-object v6, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v7, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mPos:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, "data":Ljava/lang/Object;
    if-eqz v2, :cond_6a

    .line 106
    instance-of v6, v2, [B

    if-eqz v6, :cond_55

    .line 107
    check-cast v2, [B

    .end local v2    # "data":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .line 108
    .local v3, "field":[B
    iget v6, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v6

    if-nez v6, :cond_76

    .line 109
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_4f} :catch_50
    .catchall {:try_start_c .. :try_end_4f} :catchall_65

    goto :goto_1f

    .line 129
    .end local v1    # "columnNum":I
    .end local v3    # "field":[B
    .end local v4    # "i":I
    .end local v5    # "oldpos":I
    :catch_50
    move-exception v6

    .line 132
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_8

    .line 113
    .restart local v1    # "columnNum":I
    .restart local v2    # "data":Ljava/lang/Object;
    .restart local v4    # "i":I
    .restart local v5    # "oldpos":I
    :cond_55
    :try_start_55
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "field":Ljava/lang/String;
    iget v6, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_76

    .line 115
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_64} :catch_50
    .catchall {:try_start_55 .. :try_end_64} :catchall_65

    goto :goto_1f

    .line 132
    .end local v1    # "columnNum":I
    .end local v2    # "data":Ljava/lang/Object;
    .end local v3    # "field":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "oldpos":I
    :catchall_65
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6

    .line 120
    .restart local v1    # "columnNum":I
    .restart local v2    # "data":Ljava/lang/Object;
    .restart local v4    # "i":I
    .restart local v5    # "oldpos":I
    :cond_6a
    :try_start_6a
    iget v6, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mPos:I

    invoke-virtual {p2, v6, v4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_76

    .line 121
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_1f

    .line 103
    .end local v2    # "data":Ljava/lang/Object;
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 128
    .end local v4    # "i":I
    :cond_79
    iput v5, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mPos:I
    :try_end_7b
    .catch Ljava/lang/IllegalStateException; {:try_start_6a .. :try_end_7b} :catch_50
    .catchall {:try_start_6a .. :try_end_7b} :catchall_65

    .line 132
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_8
.end method

.method public getBlob(I)[B
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->getPosition()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v0, v0

    goto :goto_5
.end method

.method public getDouble(I)D
    .registers 6
    .param p1, "columnIndex"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->getPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 186
    .local v0, "num":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public getFloat(I)F
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->getPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 180
    .local v0, "num":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 167
    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->getPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 168
    .local v0, "num":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .registers 6
    .param p1, "columnIndex"    # I

    .prologue
    .line 173
    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->getPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 174
    .local v0, "num":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public final getRows()[Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {v1}, [Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/ArrayList;

    .line 56
    .local v0, "mCopyRow":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Object;>;"
    return-object v0
.end method

.method public getShort(I)S
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->getPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 162
    .local v0, "num":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ArrayListCursor;->getPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "cell":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 155
    check-cast v0, Ljava/lang/String;

    .line 156
    .end local v0    # "cell":Ljava/lang/Object;
    :goto_12
    return-object v0

    .restart local v0    # "cell":Ljava/lang/Object;
    :cond_13
    if-nez v0, :cond_18

    const/4 v1, 0x0

    :goto_16
    move-object v0, v1

    goto :goto_12

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method public isNull(I)Z
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/pantech/app/music/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
