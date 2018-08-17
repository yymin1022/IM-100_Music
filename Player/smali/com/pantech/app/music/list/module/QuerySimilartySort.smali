.class public Lcom/pantech/app/music/list/module/QuerySimilartySort;
.super Ljava/lang/Object;
.source "QuerySimilartySort.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;,
        Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortStringCompare;,
        Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortLevenshteinDistanc;,
        Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final ETC_ENABLE:Z = false

.field public static final SIMILAR_RATIO:F = 0.8f

.field public static final SimilarityUri:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "VMusicSimilarity"

.field public static final detailLog:Z = true

.field static mLevenshteinDistance:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortLevenshteinDistanc; = null

.field public static final mMaxPart:I = 0x4

.field public static final mMaxPartItem:I = 0xc8

.field public static final mMinPartItem:I = 0x64

.field public static mSavedCursor:Lcom/pantech/app/music/common/ArrayListCursor;

.field static mStringCompare:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortStringCompare;


# instance fields
.field initCursor:Landroid/database/Cursor;

.field mContext:Landroid/content/Context;

.field mCountDown:Ljava/util/concurrent/CountDownLatch;

.field mRatio:F

.field mSimilarityResults:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "content://media/external/similarity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->SimilarityUri:Landroid/net/Uri;

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSavedCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    .line 89
    new-instance v0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortLevenshteinDistanc;

    invoke-direct {v0}, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortLevenshteinDistanc;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mLevenshteinDistance:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortLevenshteinDistanc;

    .line 90
    new-instance v0, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortStringCompare;

    invoke-direct {v0}, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortStringCompare;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mStringCompare:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortStringCompare;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLandroid/database/Cursor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simlarRatio"    # F
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mRatio:F

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSimilarityResults:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    iput-object p1, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mContext:Landroid/content/Context;

    .line 114
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mRatio:F

    .line 115
    iput-object p3, p0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->initCursor:Landroid/database/Cursor;

    .line 116
    return-void
.end method

.method public static addArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "src":[Ljava/lang/Object;, "[TT;"
    .local p1, "added":Ljava/lang/Object;, "TT;"
    array-length v2, p0

    add-int/lit8 v1, v2, 0x1

    .line 471
    .local v1, "size":I
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 474
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v2, p0

    aput-object p1, v0, v2

    .line 476
    return-object v0
.end method

.method public static addArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "src":[Ljava/lang/Object;, "[TT;"
    .local p1, "added":[Ljava/lang/Object;, "[TT;"
    array-length v3, p0

    array-length v4, p1

    add-int v2, v3, v4

    .line 456
    .local v2, "size":I
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 459
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v3, p1

    if-ge v0, v3, :cond_15

    .line 461
    array-length v3, p0

    add-int/2addr v3, v0

    aget-object v4, p1, v0

    aput-object v4, v1, v3

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 464
    :cond_15
    return-object v1
.end method

.method public static addAsETCRecord(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "headerItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    return-object p0
.end method

.method public static addHeaderRecord([Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/ArrayList;
    .registers 12
    .param p0, "ColumnNames"    # [Ljava/lang/String;
    .param p2, "similar_title"    # Ljava/lang/String;
    .param p3, "similar_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v4, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v3, :cond_62

    aget-object v1, v0, v2

    .line 182
    .local v1, "col":Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnLong(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 184
    if-nez p1, :cond_2e

    const-wide/16 v6, 0x0

    :goto_24
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 184
    :cond_2e
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_24

    .line 186
    :cond_39
    invoke-static {v1}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnInteger(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 188
    if-nez p1, :cond_4a

    const/4 v5, 0x0

    :goto_42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_4a
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_42

    .line 192
    :cond_55
    if-nez p1, :cond_5d

    const-string v5, ""

    :goto_59
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_5d
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_59

    .line 198
    .end local v1    # "col":Ljava/lang/String;
    :cond_62
    return-object v4
.end method

.method public static addRecord([Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "ColumnNames"    # [Ljava/lang/String;
    .param p2, "similar_title"    # Ljava/lang/String;
    .param p3, "similar_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v4, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v3, :cond_44

    aget-object v1, v0, v2

    .line 145
    .local v1, "col":Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnLong(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 147
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 149
    :cond_2c
    invoke-static {v1}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnInteger(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 151
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 155
    :cond_3c
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 161
    .end local v1    # "col":Ljava/lang/String;
    :cond_44
    return-object v4
.end method

.method public static clearSavedCursor()V
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSavedCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    if-eqz v0, :cond_9

    .line 125
    sget-object v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSavedCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-virtual {v0}, Lcom/pantech/app/music/common/ArrayListCursor;->close()V

    .line 127
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSavedCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    .line 128
    return-void
.end method

.method public static computeSame(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 565
    const/4 v0, 0x0

    .line 568
    :goto_7
    return v0

    :cond_8
    const/16 v0, 0x64

    goto :goto_7
.end method

.method public static convertCursorToHashtable(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 10
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 205
    .local v3, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v4, :cond_9e

    aget-object v1, v0, v2

    .line 207
    .local v1, "col":Ljava/lang/String;
    const-string v6, "title"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 209
    const-string v6, "similar_cmp_title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->removeSpaceAndToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_29
    :goto_29
    invoke-static {v1}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnLong(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 218
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 219
    .local v5, "value":Ljava/lang/Long;
    if-nez v5, :cond_67

    const-wide/16 v6, 0x0

    :goto_3f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v5    # "value":Ljava/lang/Long;
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 211
    :cond_49
    const-string v6, "artist"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 213
    const-string v6, "similar_cmp_artist"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->removeSpaceAndToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/app/music/list/utility/ListUtil;->verifyStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 219
    .restart local v5    # "value":Ljava/lang/Long;
    :cond_67
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3f

    .line 221
    .end local v5    # "value":Ljava/lang/Long;
    :cond_6c
    invoke-static {v1}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnInteger(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 223
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 224
    .local v5, "value":Ljava/lang/Integer;
    if-nez v5, :cond_89

    const/4 v6, 0x0

    :goto_81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_89
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_81

    .line 228
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_8e
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_9a

    const-string v5, ""

    .end local v5    # "value":Ljava/lang/String;
    :cond_9a
    invoke-virtual {v3, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 233
    .end local v1    # "col":Ljava/lang/String;
    :cond_9e
    return-object v3
.end method

.method public static removeSpaceAndToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call()Landroid/database/Cursor;
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    const/16 v17, 0x0

    .line 240
    .local v17, "dupCount":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 246
    sget-object v6, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSavedCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    if-eqz v6, :cond_1e

    sget-object v6, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSavedCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-virtual {v6}, Lcom/pantech/app/music/common/ArrayListCursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1e

    .line 248
    sget-object v6, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSavedCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-virtual {v6}, Lcom/pantech/app/music/common/ArrayListCursor;->clone()Landroid/database/Cursor;

    move-result-object v32

    .line 449
    :goto_1d
    return-object v32

    .line 251
    :cond_1e
    const/16 v32, 0x0

    .line 252
    .local v32, "similaryCursor":Landroid/database/Cursor;
    const/16 v24, 0x0

    .line 253
    .local v24, "localCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->initCursor:Landroid/database/Cursor;

    if-nez v6, :cond_45

    .line 254
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v3, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x7

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(ZZILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    invoke-static {v10, v11, v3, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v24

    .line 255
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/music/list/module/QuerySimilartySort;->initCursor:Landroid/database/Cursor;

    .line 259
    :cond_45
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->initCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_244

    .line 261
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->initCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v26

    .line 263
    .local v26, "processCount":I
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 266
    .local v5, "targetConvertedList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v28, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v29, "rows_etc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v30, Ljava/util/Stack;

    invoke-direct/range {v30 .. v30}, Ljava/util/Stack;-><init>()V

    .line 272
    .local v30, "rows_similarity":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    .line 274
    .local v4, "cmpTitle":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->initCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v13

    .line 277
    .local v13, "columnNames":[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_74
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_93

    .line 279
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->initCursor:Landroid/database/Cursor;

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->initCursor:Landroid/database/Cursor;

    invoke-static {v6, v13}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->convertCursorToHashtable(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v22

    .line 281
    .local v22, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v20, v20, 0x1

    goto :goto_74

    .line 283
    .end local v22    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_93
    if-eqz v24, :cond_98

    .line 284
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_98
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_9a
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1f4

    .line 290
    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Hashtable;

    .local v25, "mainitem":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v23, v23, -0x1

    .line 291
    add-int/lit8 v26, v26, -0x1

    .line 292
    const-string v6, "_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Long;

    .line 293
    .local v34, "szHeaderID":Ljava/lang/Long;
    const-string v6, "similar_cmp_title"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 294
    .local v35, "szHeaderTitle":Ljava/lang/String;
    const-string v6, "similar_cmp_artist"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 298
    .local v33, "szArtiest":Ljava/lang/String;
    const/4 v6, 0x0

    aput-object v35, v4, v6

    .line 299
    const/4 v6, 0x1

    aput-object v33, v4, v6

    .line 302
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mRatio:F

    mul-float/2addr v6, v7

    float-to-int v9, v6

    .line 305
    .local v9, "similarRatio":I
    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-static {v13, v0, v1, v2}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->addHeaderRecord([Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v19

    .line 307
    .local v19, "headerRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v27

    .line 309
    .local v27, "remainCntsSize":I
    move/from16 v0, v27

    div-int/lit16 v6, v0, 0xc8

    add-int/lit8 v16, v6, 0x1

    .line 311
    .local v16, "dividePartNumTmp":I
    const/4 v6, 0x4

    move/from16 v0, v16

    if-le v0, v6, :cond_164

    const/4 v15, 0x4

    .line 314
    .local v15, "dividePartNum":I
    :goto_f5
    const/4 v6, 0x1

    move/from16 v0, v16

    if-ne v0, v6, :cond_101

    const/16 v6, 0x64

    move/from16 v0, v27

    if-lt v0, v6, :cond_101

    .line 316
    const/4 v15, 0x2

    .line 323
    :cond_101
    if-lez v15, :cond_1c4

    .line 325
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 327
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    div-int v8, v6, v15

    .line 331
    .local v8, "size":I
    const/16 v20, 0x0

    :goto_114
    move/from16 v0, v20

    if-ge v0, v15, :cond_177

    .line 334
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;

    .line 335
    .local v3, "task":Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;
    if-nez v3, :cond_167

    .line 337
    new-instance v3, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;

    .end local v3    # "task":Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSimilarityResults:Ljava/util/concurrent/CopyOnWriteArrayList;

    mul-int v7, v20, v8

    sget-object v10, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mLevenshteinDistance:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortLevenshteinDistanc;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-direct/range {v3 .. v11}, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;-><init>([Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;IIILcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;Ljava/util/concurrent/CountDownLatch;)V

    .line 338
    .restart local v3    # "task":Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :goto_144
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Similarity Sort Process Thread #"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 331
    add-int/lit8 v20, v20, 0x1

    goto :goto_114

    .end local v3    # "task":Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;
    .end local v8    # "size":I
    .end local v15    # "dividePartNum":I
    :cond_164
    move/from16 v15, v16

    .line 311
    goto :goto_f5

    .line 342
    .restart local v3    # "task":Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;
    .restart local v8    # "size":I
    .restart local v15    # "dividePartNum":I
    :cond_167
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSimilarityResults:Ljava/util/concurrent/CopyOnWriteArrayList;

    mul-int v7, v20, v8

    sget-object v10, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mLevenshteinDistance:Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortLevenshteinDistanc;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual/range {v3 .. v11}, Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;->set([Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;IIILcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_144

    .line 352
    .end local v3    # "task":Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortTask;
    :cond_177
    :try_start_177
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 357
    invoke-virtual/range {v30 .. v30}, Ljava/util/Stack;->clear()V

    .line 360
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSimilarityResults:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    .local v14, "descendingSimilarityResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/pantech/app/music/list/module/QuerySimilartySort$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/pantech/app/music/list/module/QuerySimilartySort$1;-><init>(Lcom/pantech/app/music/list/module/QuerySimilartySort;)V

    invoke-static {v14, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 371
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_198
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    .line 374
    .local v31, "similarIndex":Ljava/lang/Integer;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Hashtable;

    .line 375
    .restart local v22    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v26, v26, -0x1

    .line 379
    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-static {v13, v0, v1, v2}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->addRecord([Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1bf
    .catch Ljava/lang/InterruptedException; {:try_start_177 .. :try_end_1bf} :catch_1c0

    goto :goto_198

    .line 411
    .end local v14    # "descendingSimilarityResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v31    # "similarIndex":Ljava/lang/Integer;
    :catch_1c0
    move-exception v18

    .line 414
    .local v18, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 288
    .end local v8    # "size":I
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_1c4
    :goto_1c4
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9a

    .line 383
    .restart local v8    # "size":I
    .restart local v14    # "descendingSimilarityResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_1c8
    :try_start_1c8
    invoke-virtual/range {v30 .. v30}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_1e6

    .line 385
    invoke-virtual/range {v30 .. v30}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int v17, v17, v6

    .line 388
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 391
    const/16 v19, 0x0

    .line 407
    :cond_1e6
    invoke-virtual/range {v30 .. v30}, Ljava/util/Stack;->clear()V

    .line 408
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 409
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSimilarityResults:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1f3
    .catch Ljava/lang/InterruptedException; {:try_start_1c8 .. :try_end_1f3} :catch_1c0

    goto :goto_1c4

    .line 425
    .end local v8    # "size":I
    .end local v9    # "similarRatio":I
    .end local v14    # "descendingSimilarityResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "dividePartNum":I
    .end local v16    # "dividePartNumTmp":I
    .end local v19    # "headerRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v25    # "mainitem":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v27    # "remainCntsSize":I
    .end local v33    # "szArtiest":Ljava/lang/String;
    .end local v34    # "szHeaderID":Ljava/lang/Long;
    .end local v35    # "szHeaderTitle":Ljava/lang/String;
    :cond_1f4
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_227

    .line 427
    const/4 v6, 0x3

    new-array v12, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "similar_type"

    aput-object v7, v12, v6

    const/4 v6, 0x1

    const-string v7, "similar_id"

    aput-object v7, v12, v6

    const/4 v6, 0x2

    const-string v7, "similar_title"

    aput-object v7, v12, v6

    .line 429
    .local v12, "additionalColNames":[Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->addArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "columnNames":[Ljava/lang/String;
    check-cast v13, [Ljava/lang/String;

    .line 431
    .restart local v13    # "columnNames":[Ljava/lang/String;
    new-instance v32, Lcom/pantech/app/music/common/ArrayListCursor;

    .end local v32    # "similaryCursor":Landroid/database/Cursor;
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v1}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .restart local v32    # "similaryCursor":Landroid/database/Cursor;
    move-object/from16 v6, v32

    .line 437
    check-cast v6, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-virtual {v6}, Lcom/pantech/app/music/common/ArrayListCursor;->clone()Landroid/database/Cursor;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/music/common/ArrayListCursor;

    sput-object v6, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mSavedCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    .line 442
    .end local v12    # "additionalColNames":[Ljava/lang/String;
    :cond_227
    if-lez v26, :cond_244

    .line 443
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missed processing item count: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 447
    .end local v4    # "cmpTitle":[Ljava/lang/String;
    .end local v5    # "targetConvertedList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v13    # "columnNames":[Ljava/lang/String;
    .end local v20    # "i":I
    .end local v23    # "k":I
    .end local v26    # "processCount":I
    .end local v28    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    .end local v29    # "rows_etc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    .end local v30    # "rows_similarity":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    :cond_244
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/list/module/QuerySimilartySort;->mTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_1d
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->call()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
