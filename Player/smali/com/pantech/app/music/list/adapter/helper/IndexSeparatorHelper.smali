.class public Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
.super Ljava/lang/Object;
.source "IndexSeparatorHelper.java"


# static fields
.field public static final AlphabetTable:[C

.field public static final KoreanChosungTable:[C

.field static final TAG:Ljava/lang/String; = "VMusicAdapterIndexHelper"

.field private static mColl:Ljava/text/Collator;

.field static final mDebug:Z


# instance fields
.field mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field protected final mEnUSLocaleIndexCharactersAscOrder:[C

.field protected final mEnUSLocaleIndexCharactersAscOrderSuuportJap:[C

.field final mFirstCharCacheTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field final mFirstCharCollationKeyTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFirstCharTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFirstJapanCharCollationKeyTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFirstJapanCharTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFirstJapnCharCacheTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

.field protected mIndexFirstPosHashtable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndexHashtable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIsSeperator:Z

.field protected final mKoreanLocaleIndexCharactersAscOrder:[C

.field protected final mKoreanLocaleIndexCharactersAscOrderSuuportJap:[C

.field protected mcIndexCharacters:[C

.field mcIndexFirstCharacters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field protected mcMakedIndexCharacters:[C

.field protected miMakedIndexSeparatorPos:[I

.field protected miMakedIndexSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->AlphabetTable:[C

    .line 78
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_34

    sput-object v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->KoreanChosungTable:[C

    .line 218
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mColl:Ljava/text/Collator;

    return-void

    .line 73
    :array_16
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    .line 78
    :array_34
    .array-data 2
        0x3131s
        0x3132s
        0x3134s
        0x3137s
        0x3138s
        0x3139s
        0x3141s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x3149s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;
    .param p3, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;-><init>(Landroid/content/Context;ZLcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;Ljava/lang/Object;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSeperator"    # Z
    .param p3, "listener"    # Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;
    .param p4, "cursorLock"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x34

    const/16 v2, 0x2a

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    .line 60
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    .line 62
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCacheTable:Ljava/util/Hashtable;

    .line 65
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstJapanCharCollationKeyTable:Landroid/util/SparseArray;

    .line 66
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstJapanCharTable:Ljava/util/Hashtable;

    .line 68
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstJapnCharCacheTable:Ljava/util/Hashtable;

    .line 99
    new-array v1, v3, [C

    fill-array-data v1, :array_1d4

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mKoreanLocaleIndexCharactersAscOrderSuuportJap:[C

    .line 130
    new-array v1, v2, [C

    fill-array-data v1, :array_20c

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mKoreanLocaleIndexCharactersAscOrder:[C

    .line 151
    new-array v1, v3, [C

    fill-array-data v1, :array_23a

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mEnUSLocaleIndexCharactersAscOrderSuuportJap:[C

    .line 182
    new-array v1, v2, [C

    fill-array-data v1, :array_272

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mEnUSLocaleIndexCharactersAscOrder:[C

    .line 263
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mContext:Landroid/content/Context;

    .line 265
    iput-object p4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mCursorLock:Ljava/lang/Object;

    .line 267
    iput-boolean p2, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIsSeperator:Z

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "index":I
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\uac00"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\uac00"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 272
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ub098"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ub098"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 273
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ub2e4"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ub2e4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 274
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ub77c"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ub77c"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 275
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ub9c8"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ub9c8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 276
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ubc14"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ubc14"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 277
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\uc0ac"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\uc0ac"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 278
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\uc544"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\uc544"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 279
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\uc790"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\uc790"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 280
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ucc28"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ucc28"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 281
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\uce74"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\uce74"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 282
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ud0c0"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ud0c0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 283
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ud30c"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ud30c"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 284
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ud558"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ud558"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 285
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    const-string v2, "\ud7a3"

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\ud7a3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iput-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    .line 306
    iput-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexCharacters:[C

    .line 308
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 310
    invoke-static {}, Lcom/pantech/app/music/utils/SystemUtils;->isKoreanLocale()Z

    move-result v1

    if-eqz v1, :cond_1ce

    .line 318
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mKoreanLocaleIndexCharactersAscOrder:[C

    invoke-virtual {p0, v1, p3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->initIndexBar([CLcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;)Z

    .line 332
    :goto_1cd
    return-void

    .line 329
    :cond_1ce
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mEnUSLocaleIndexCharactersAscOrder:[C

    invoke-virtual {p0, v1, p3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->initIndexBar([CLcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;)Z

    goto :goto_1cd

    .line 99
    :array_1d4
    .array-data 2
        0x23s
        0x31s
        0x1100s
        0x1102s
        0x1103s
        0x1105s
        0x1106s
        0x1107s
        0x1109s
        0x110bs
        0x110cs
        0x110es
        0x110fs
        0x1110s
        0x1111s
        0x1112s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x3042s
        0x304bs
        0x3055s
        0x305fs
        0x306as
        0x306fs
        0x307es
        0x3084s
        0x3089s
        0x308fs
    .end array-data

    .line 130
    :array_20c
    .array-data 2
        0x23s
        0x31s
        0x1100s
        0x1102s
        0x1103s
        0x1105s
        0x1106s
        0x1107s
        0x1109s
        0x110bs
        0x110cs
        0x110es
        0x110fs
        0x1110s
        0x1111s
        0x1112s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    .line 151
    :array_23a
    .array-data 2
        0x23s
        0x31s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x3042s
        0x304bs
        0x3055s
        0x305fs
        0x306as
        0x306fs
        0x307es
        0x3084s
        0x3089s
        0x308fs
        0x1100s
        0x1102s
        0x1103s
        0x1105s
        0x1106s
        0x1107s
        0x1109s
        0x110bs
        0x110cs
        0x110es
        0x110fs
        0x1110s
        0x1111s
        0x1112s
    .end array-data

    .line 182
    :array_272
    .array-data 2
        0x23s
        0x31s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x1100s
        0x1102s
        0x1103s
        0x1105s
        0x1106s
        0x1107s
        0x1109s
        0x110bs
        0x110cs
        0x110es
        0x110fs
        0x1110s
        0x1111s
        0x1112s
    .end array-data
.end method

.method private checkValidSeperaterAtPosition(CLandroid/database/Cursor;ILjava/lang/String;)Z
    .registers 9
    .param p1, "targetCh"    # C
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I
    .param p4, "titleColumn"    # Ljava/lang/String;

    .prologue
    .line 595
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 597
    const/16 v1, 0x20

    .line 598
    .local v1, "prevCh":C
    const/16 v0, 0x20

    .line 600
    .local v0, "ch":C
    add-int/lit8 v2, p3, -0x1

    :try_start_9
    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 601
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->findIndexCharacter(Ljava/lang/String;)C

    move-result v1

    .line 602
    :cond_1b
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 603
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->findIndexCharacter(Ljava/lang/String;)C

    move-result v0

    .line 605
    :cond_2d
    if-ne v0, p1, :cond_34

    if-eq v1, p1, :cond_34

    .line 607
    const/4 v2, 0x1

    monitor-exit v3

    .line 610
    :goto_33
    return v2

    :cond_34
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_33

    .line 611
    :catchall_37
    move-exception v2

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public static getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 225
    .local v0, "arr":[B
    :try_start_4
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getKeyLen([B)I

    move-result v4

    const-string v5, "ISO8859_1"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    .line 229
    :goto_10
    return-object v2

    .line 227
    :catch_11
    move-exception v1

    .line 229
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_10
.end method

.method private static getCollationKeyInBytes(Ljava/lang/String;)[B
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 248
    sget-object v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_10

    .line 250
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mColl:Ljava/text/Collator;

    .line 251
    sget-object v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 253
    :cond_10
    sget-object v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static getKeyLen([B)I
    .registers 2
    .param p0, "arr"    # [B

    .prologue
    .line 235
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_9

    .line 237
    array-length v0, p0

    .line 242
    :goto_8
    return v0

    :cond_9
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public static isKorean(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    if-eqz p0, :cond_1e

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 209
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 211
    :cond_1c
    const/4 v1, 0x1

    .line 215
    .end local v0    # "locale":Ljava/util/Locale;
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private isValidIndexbarScroller(Landroid/database/Cursor;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "titleColumn"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x20

    const/4 v10, 0x0

    .line 616
    const/4 v8, 0x0

    .line 618
    .local v8, "pos":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 620
    .local v4, "isValid":Z
    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexFirstCharacters:Ljava/util/ArrayList;

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    if-eqz v9, :cond_15

    if-eqz p1, :cond_15

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-eqz v9, :cond_17

    :cond_15
    move v9, v10

    .line 694
    :goto_16
    return v9

    .line 628
    :cond_17
    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexFirstCharacters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 629
    .local v5, "lastIndex":I
    const/4 v1, 0x0

    .line 631
    .local v1, "firstIndex":I
    move v3, v5

    .local v3, "i":I
    :goto_21
    if-ltz v3, :cond_112

    .line 633
    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexFirstCharacters:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 634
    .local v0, "ch":C
    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "pos":Ljava/lang/Integer;
    check-cast v8, Ljava/lang/Integer;

    .line 636
    .restart local v8    # "pos":Ljava/lang/Integer;
    if-eqz v8, :cond_10e

    .line 638
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v0, p1, v9, p2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->checkValidSeperaterAtPosition(CLandroid/database/Cursor;ILjava/lang/String;)Z

    move-result v4

    .line 640
    if-nez v4, :cond_6f

    .line 642
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IndexBar changed currentPos misMatch at"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ch:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    move v9, v10

    .line 643
    goto :goto_16

    .line 653
    :cond_6f
    if-eqz v4, :cond_b6

    if-ne v1, v3, :cond_b6

    .line 655
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_b6

    .line 657
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->findIndexCharacter(Ljava/lang/String;)C

    move-result v2

    .line 659
    .local v2, "first_prevChar":C
    if-eq v2, v12, :cond_b6

    .line 661
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IndexBar changed prevChar:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " prev pos:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    move v9, v10

    .line 663
    goto/16 :goto_16

    .line 672
    .end local v2    # "first_prevChar":C
    :cond_b6
    if-eqz v4, :cond_10e

    if-ne v5, v3, :cond_10e

    .line 674
    const/16 v6, 0x20

    .line 676
    .local v6, "last_nextChar":C
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .local v7, "newPos":I
    :goto_c2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ge v7, v9, :cond_10e

    .line 678
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_10b

    .line 680
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->findIndexCharacter(Ljava/lang/String;)C

    move-result v6

    .line 682
    if-eq v6, v12, :cond_10b

    if-eq v6, v0, :cond_10b

    .line 684
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IndexBar changed ch:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " changed LastChar:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " prev pos:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    move v9, v10

    .line 685
    goto/16 :goto_16

    .line 676
    :cond_10b
    add-int/lit8 v7, v7, 0x1

    goto :goto_c2

    .line 631
    .end local v6    # "last_nextChar":C
    .end local v7    # "newPos":I
    :cond_10e
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_21

    .end local v0    # "ch":C
    :cond_112
    move v9, v4

    .line 694
    goto/16 :goto_16
.end method


# virtual methods
.method public buildIndexBarInformation(Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 27
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "titleColumn"    # Ljava/lang/String;

    .prologue
    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mCursorLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 702
    const/4 v9, 0x0

    .line 706
    .local v9, "iIndex":I
    const/16 v13, 0x20

    .line 708
    .local v13, "preCh":C
    const-wide/16 v14, 0x0

    .line 710
    .local v14, "lap":J
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 713
    const-string v18, "VMusicAdapterIndexHelper"

    const-string v20, "[[buildIndexBarInformation"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    if-nez p1, :cond_4c

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->clear()V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->clear()V

    .line 719
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexCharacters:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->rebuildIndex([C)V

    .line 721
    monitor-exit v19

    .line 848
    :goto_4b
    return-void

    .line 728
    :cond_4c
    const-string v18, "VMusicAdapterIndexHelper"

    const-string v20, "[performance] buildIndexBarInformation check"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-direct/range {p0 .. p2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->isValidIndexbarScroller(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_88

    .line 731
    const-string v18, "VMusicAdapterIndexHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[performance] buildIndexBarInformation was skipped.]] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v14

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    monitor-exit v19

    goto :goto_4b

    .line 847
    :catchall_85
    move-exception v18

    monitor-exit v19
    :try_end_87
    .catchall {:try_start_c .. :try_end_87} :catchall_85

    throw v18

    .line 735
    :cond_88
    :try_start_88
    const-string v18, "VMusicAdapterIndexHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[performance] buildIndexBarInformation check over "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v14

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const/4 v9, 0x0

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->clear()V

    .line 744
    :goto_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexCharacters:[C

    move-object/from16 v18, v0

    if-eqz v18, :cond_f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexCharacters:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_f1

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexCharacters:[C

    move-object/from16 v20, v0

    aget-char v20, v20, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    add-int/lit8 v9, v9, 0x1

    goto :goto_b8

    .line 752
    :cond_f1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexFirstCharacters:Ljava/util/ArrayList;

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->clear()V

    .line 756
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 757
    .local v8, "iCursorCurrentOffset":I
    const/16 v18, 0x1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a7

    .line 759
    const/4 v9, 0x0

    .line 760
    const/4 v10, 0x0

    .line 765
    .local v10, "iLastRepIndex":I
    :cond_117
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 767
    .local v17, "szStr":Ljava/lang/String;
    if-eqz v17, :cond_194

    .line 769
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->findIndexCharacter(Ljava/lang/String;)C

    move-result v4

    .line 771
    .local v4, "ch":C
    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v0, v4, :cond_194

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 776
    .local v12, "iRepIndex":Ljava/lang/Integer;
    if-eqz v12, :cond_194

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    if-gt v10, v0, :cond_194

    .line 778
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 780
    if-eq v13, v4, :cond_194

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_194

    .line 782
    move v13, v4

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexFirstCharacters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v4    # "ch":C
    .end local v12    # "iRepIndex":Ljava/lang/Integer;
    :cond_194
    add-int/lit8 v9, v9, 0x1

    .line 792
    const/16 v18, 0x1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_117

    .line 793
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 799
    .end local v10    # "iLastRepIndex":I
    .end local v17    # "szStr":Ljava/lang/String;
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->size()I

    move-result v11

    .line 800
    .local v11, "iNewIndexCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v11, v0, :cond_1dc

    .line 802
    :cond_1c8
    new-array v0, v11, [C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    .line 803
    new-array v0, v11, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSeparatorPos:[I

    .line 805
    :cond_1dc
    move-object/from16 v0, p0

    iput v11, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 811
    const/16 v16, 0x0

    .line 813
    .local v16, "seperatorIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexFirstCharacters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1ec
    :goto_1ec
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_261

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    .line 815
    .local v5, "firstCharactor":Ljava/lang/Character;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 817
    .local v6, "firstCharactorPosition":Ljava/lang/Integer;
    if-eqz v6, :cond_1ec

    .line 819
    const/16 v18, 0x1100

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_251

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v18

    const/16 v20, 0x1112

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_251

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    move-object/from16 v18, v0

    sget-object v20, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->KoreanChosungTable:[C

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, -0x1100

    move/from16 v21, v0

    aget-char v20, v20, v21

    aput-char v20, v18, v16

    .line 832
    :goto_236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSeparatorPos:[I

    move-object/from16 v20, v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIsSeperator:Z

    move/from16 v18, v0

    if-eqz v18, :cond_25e

    move/from16 v18, v16

    :goto_24a
    add-int v18, v18, v21

    aput v18, v20, v16

    .line 839
    add-int/lit8 v16, v16, 0x1

    goto :goto_1ec

    .line 825
    :cond_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v20

    aput-char v20, v18, v16

    goto :goto_236

    .line 832
    :cond_25e
    const/16 v18, 0x0

    goto :goto_24a

    .line 843
    .end local v5    # "firstCharactor":Ljava/lang/Character;
    .end local v6    # "firstCharactorPosition":Ljava/lang/Integer;
    :cond_261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->rebuildIndex([C)V

    .line 846
    const-string v18, "VMusicAdapterIndexHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[performance] buildIndexBarInformation ]] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v14

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    monitor-exit v19
    :try_end_29b
    .catchall {:try_start_88 .. :try_end_29b} :catchall_85

    goto/16 :goto_4b
.end method

.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1040
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    .line 1041
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexCharacters:[C

    .line 1043
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    .line 1044
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSeparatorPos:[I

    .line 1046
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 1048
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1049
    :cond_15
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1051
    :cond_1e
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    .line 1052
    return-void
.end method

.method protected findIndexCharacter(Ljava/lang/String;)C
    .registers 16
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x31

    const/16 v3, 0x23

    const/16 v10, 0x20

    .line 405
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexChar(Ljava/lang/String;)C

    move-result v0

    .line 409
    .local v0, "ch":C
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCacheTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 411
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCacheTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 419
    :cond_26
    :goto_26
    if-ne v0, v10, :cond_47

    move v2, v10

    .line 582
    :cond_29
    :goto_29
    return v2

    .line 413
    :cond_2a
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstJapnCharCacheTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 415
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstJapnCharCacheTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_26

    .line 425
    :cond_47
    const v7, 0xac00

    if-gt v7, v0, :cond_e4

    const v7, 0xd7a3

    if-gt v0, v7, :cond_e4

    .line 428
    int-to-long v8, v0

    .line 429
    .local v8, "iUniValue":J
    const-wide/32 v12, 0xac00

    sub-long/2addr v8, v12

    .line 431
    const-wide/16 v12, 0x24c

    div-long/2addr v8, v12

    .line 432
    const-wide/16 v12, 0x1100

    add-long/2addr v8, v12

    .line 433
    long-to-int v7, v8

    int-to-char v2, v7

    .line 436
    .local v2, "cho":C
    const/16 v7, 0x1101

    if-eq v2, v7, :cond_72

    const/16 v7, 0x1104

    if-eq v2, v7, :cond_72

    const/16 v7, 0x1108

    if-eq v2, v7, :cond_72

    const/16 v7, 0x110a

    if-eq v2, v7, :cond_72

    const/16 v7, 0x110d

    if-ne v2, v7, :cond_75

    .line 439
    :cond_72
    add-int/lit8 v7, v2, -0x1

    int-to-char v2, v7

    .line 442
    :cond_75
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 521
    .end local v2    # "cho":C
    .end local v8    # "iUniValue":J
    :cond_81
    const/4 v5, 0x0

    .line 522
    .local v5, "findFirstChar":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, "collationKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->isKorean(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 527
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_93
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_dc

    .line 529
    if-eqz v4, :cond_16b

    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_16b

    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCollationKeyTable:Landroid/util/SparseArray;

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_16b

    .line 534
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharTable:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "findFirstChar":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 536
    .restart local v5    # "findFirstChar":Ljava/lang/String;
    if-eqz v5, :cond_16b

    .line 538
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mFirstCharCacheTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexChar(Ljava/lang/String;)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v6    # "i":I
    :cond_dc
    if-eqz v5, :cond_16f

    .line 579
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->findIndexCharacter(Ljava/lang/String;)C

    move-result v2

    goto/16 :goto_29

    .line 447
    .end local v4    # "collationKey":Ljava/lang/String;
    .end local v5    # "findFirstChar":Ljava/lang/String;
    :cond_e4
    const/16 v7, 0x3131

    if-gt v7, v0, :cond_129

    const/16 v7, 0x314e

    if-gt v0, v7, :cond_129

    .line 449
    move v3, v0

    .line 451
    .local v3, "cho2":C
    add-int/lit16 v7, v3, -0x3131

    int-to-char v3, v7

    .line 452
    add-int/lit16 v7, v3, 0x1100

    int-to-char v3, v7

    .line 453
    packed-switch v0, :pswitch_data_172

    .line 482
    :goto_f6
    :pswitch_f6
    const/16 v7, 0x3132

    if-eq v0, v7, :cond_10a

    const/16 v7, 0x3138

    if-eq v0, v7, :cond_10a

    const/16 v7, 0x3143

    if-eq v0, v7, :cond_10a

    const/16 v7, 0x3146

    if-eq v0, v7, :cond_10a

    const/16 v7, 0x3149

    if-ne v0, v7, :cond_10d

    .line 485
    :cond_10a
    add-int/lit8 v7, v3, -0x1

    int-to-char v3, v7

    .line 488
    :cond_10d
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    move v2, v3

    .line 490
    goto/16 :goto_29

    .line 465
    :pswitch_11c
    add-int/lit8 v7, v3, -0x1

    int-to-char v3, v7

    .line 469
    :pswitch_11f
    add-int/lit8 v7, v3, -0x7

    int-to-char v3, v7

    .line 473
    :pswitch_122
    add-int/lit8 v7, v3, -0x2

    int-to-char v3, v7

    .line 475
    :pswitch_125
    add-int/lit8 v7, v3, -0x1

    int-to-char v3, v7

    goto :goto_f6

    .line 495
    .end local v3    # "cho2":C
    :cond_129
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getUpcase(C)C

    move-result v1

    .line 497
    .local v1, "chUpcase":C
    const/16 v7, 0x30

    if-lt v1, v7, :cond_141

    const/16 v7, 0x39

    if-gt v1, v7, :cond_141

    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 501
    :cond_141
    const/16 v7, 0x41

    if-lt v1, v7, :cond_14c

    const/16 v7, 0x5a

    if-gt v1, v7, :cond_14c

    move v2, v1

    .line 503
    goto/16 :goto_29

    .line 505
    :cond_14c
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v7

    if-nez v7, :cond_168

    const v7, 0xff01

    if-lt v1, v7, :cond_81

    const v7, 0xff20

    if-gt v1, v7, :cond_81

    :cond_168
    move v2, v3

    .line 508
    goto/16 :goto_29

    .line 527
    .end local v1    # "chUpcase":C
    .restart local v4    # "collationKey":Ljava/lang/String;
    .restart local v5    # "findFirstChar":Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_16b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_93

    .end local v6    # "i":I
    :cond_16f
    move v2, v10

    .line 582
    goto/16 :goto_29

    .line 453
    :pswitch_data_172
    .packed-switch 0x3134
        :pswitch_125
        :pswitch_f6
        :pswitch_f6
        :pswitch_122
        :pswitch_122
        :pswitch_122
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_f6
        :pswitch_11f
        :pswitch_11f
        :pswitch_11f
        :pswitch_f6
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
    .end packed-switch
.end method

.method protected getIndexChar(Ljava/lang/String;)C
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 395
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    .line 396
    :cond_8
    const/16 v0, 0x20

    .line 400
    :goto_a
    return v0

    .line 398
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 400
    .local v0, "ch":C
    goto :goto_a
.end method

.method public getIndexCharacter(I)C
    .registers 6
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 852
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 853
    .local v1, "iIndexCount":I
    const/4 v0, 0x0

    .line 856
    .local v0, "iIndex":I
    :goto_3
    if-ge v0, v1, :cond_13

    .line 858
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSeparatorPos:[I

    aget v2, v3, v0

    .line 860
    .local v2, "iSeparatorPos":I
    if-lt v2, p1, :cond_10

    .line 862
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    aget-char v3, v3, v0

    .line 867
    .end local v2    # "iSeparatorPos":I
    :goto_f
    return v3

    .line 864
    .restart local v2    # "iSeparatorPos":I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 867
    .end local v2    # "iSeparatorPos":I
    :cond_13
    const/16 v3, 0x20

    goto :goto_f
.end method

.method public getIndexCharacterAtAnyPosition(I)C
    .registers 7
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 872
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 873
    .local v1, "iIndexCount":I
    const/4 v0, 0x0

    .line 876
    .local v0, "iIndex":I
    :goto_3
    if-ge v0, v1, :cond_1f

    .line 879
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSeparatorPos:[I

    aget v2, v3, v0

    .line 881
    .local v2, "iSeparatorPos":I
    if-ne v2, p1, :cond_10

    .line 883
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    aget-char v3, v3, v0

    .line 897
    .end local v2    # "iSeparatorPos":I
    :goto_f
    return v3

    .line 885
    .restart local v2    # "iSeparatorPos":I
    :cond_10
    if-le v2, p1, :cond_1c

    .line 887
    add-int/lit8 v0, v0, -0x1

    .line 888
    if-gtz v0, :cond_17

    .line 889
    const/4 v0, 0x0

    .line 890
    :cond_17
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    aget-char v3, v3, v0

    goto :goto_f

    .line 892
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 895
    .end local v2    # "iSeparatorPos":I
    :cond_1f
    if-gtz v1, :cond_24

    .line 896
    const/16 v3, 0x20

    goto :goto_f

    .line 897
    :cond_24
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    add-int/lit8 v4, v1, -0x1

    aget-char v3, v3, v4

    goto :goto_f
.end method

.method public getIndexSize()I
    .registers 2

    .prologue
    .line 345
    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    return v0
.end method

.method public getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    return-object v0
.end method

.method public getItemPosition(I)I
    .registers 6
    .param p1, "viewPosition"    # I

    .prologue
    .line 931
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 932
    .local v1, "iIndexCount":I
    const/4 v0, 0x0

    .line 933
    .local v0, "iIndex":I
    const/4 v2, -0x1

    .line 935
    .local v2, "iSeparatorPos":I
    :goto_4
    if-ge v0, v1, :cond_c

    .line 937
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSeparatorPos:[I

    aget v2, v3, v0

    .line 939
    if-lt v2, p1, :cond_f

    .line 946
    :cond_c
    sub-int v3, p1, v0

    return v3

    .line 943
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public getItemViewType(I)I
    .registers 7
    .param p1, "iInternalPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 1017
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 1018
    .local v1, "iIndexCount":I
    const/4 v0, 0x0

    .line 1021
    .local v0, "iIndex":I
    :goto_4
    if-ge v0, v1, :cond_d

    .line 1023
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSeparatorPos:[I

    aget v2, v4, v0

    .line 1024
    .local v2, "iSeparatorPos":I
    if-ne v2, p1, :cond_e

    .line 1026
    const/4 v3, 0x1

    .line 1035
    .end local v2    # "iSeparatorPos":I
    :cond_d
    return v3

    .line 1028
    .restart local v2    # "iSeparatorPos":I
    :cond_e
    if-gt v2, p1, :cond_d

    .line 1032
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public getSeperaterPosition(IC)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 997
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 998
    .local v1, "iIndexCount":I
    const/4 v0, 0x0

    .line 1000
    .local v0, "iIndex":I
    :goto_3
    if-ge v0, v1, :cond_13

    .line 1002
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcMakedIndexCharacters:[C

    aget-char v3, v3, v0

    if-ne p2, v3, :cond_10

    .line 1004
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSeparatorPos:[I

    aget v2, v3, v0

    .line 1012
    :goto_f
    return v2

    .line 1009
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1012
    :cond_13
    const/4 v2, -0x1

    goto :goto_f
.end method

.method protected getUpcase(C)C
    .registers 4
    .param p1, "ch"    # C

    .prologue
    .line 380
    const/16 v1, 0x41

    if-gt v1, p1, :cond_9

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_9

    .line 387
    .end local p1    # "ch":C
    :cond_8
    :goto_8
    return p1

    .line 382
    .restart local p1    # "ch":C
    :cond_9
    const/16 v1, 0x61

    if-gt v1, p1, :cond_8

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_8

    .line 384
    add-int/lit8 v0, p1, -0x61

    .line 385
    .local v0, "iIndex":I
    sget-object v1, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->AlphabetTable:[C

    aget-char p1, v1, v0

    goto :goto_8
.end method

.method public getViewPosition(II)I
    .registers 5
    .param p1, "cursorPosition"    # I
    .param p2, "mainCount"    # I

    .prologue
    .line 957
    const/4 v0, 0x0

    .line 959
    .local v0, "index":I
    :goto_1
    if-ge v0, p2, :cond_9

    .line 961
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getItemPosition(I)I

    move-result v1

    if-ne p1, v1, :cond_14

    .line 965
    :cond_9
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getItemPosition(I)I

    move-result v1

    if-ne v1, p1, :cond_13

    .line 967
    add-int/lit8 v0, v0, 0x1

    .line 970
    :cond_13
    return v0

    .line 959
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public initIndexBar([CLcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;)Z
    .registers 9
    .param p1, "cIndexCharacters"    # [C
    .param p2, "listener"    # Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 350
    new-instance v4, Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    .line 352
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-virtual {v4, p2}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->setIndexedChangeListener(Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;)V

    .line 355
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-virtual {v4, p1}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->makeIndex([C)Z

    move-result v4

    if-ne v2, v4, :cond_4c

    .line 357
    array-length v1, p1

    .line 358
    .local v1, "iLength":I
    const/4 v0, 0x0

    .line 360
    .local v0, "iIndex":I
    new-array v4, v1, [C

    iput-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexCharacters:[C

    .line 361
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexCharacters:[C

    invoke-static {p1, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    .line 363
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexFirstPosHashtable:Ljava/util/Hashtable;

    .line 365
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 366
    :goto_36
    if-ge v0, v1, :cond_4d

    .line 368
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mIndexHashtable:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->mcIndexCharacters:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .end local v0    # "iIndex":I
    .end local v1    # "iLength":I
    :cond_4c
    move v2, v3

    .line 375
    :cond_4d
    return v2
.end method

.method public isSeparatorPos(I)I
    .registers 6
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 977
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSize:I

    .line 978
    .local v1, "iIndexCount":I
    const/4 v0, 0x0

    .line 981
    .local v0, "iIndex":I
    :goto_3
    if-ge v0, v1, :cond_f

    .line 983
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->miMakedIndexSeparatorPos:[I

    aget v2, v3, v0

    .line 985
    .local v2, "iSeparatorPos":I
    if-ne v2, p1, :cond_c

    .line 992
    .end local v2    # "iSeparatorPos":I
    :goto_b
    return v2

    .line 989
    .restart local v2    # "iSeparatorPos":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 992
    .end local v2    # "iSeparatorPos":I
    :cond_f
    const/4 v2, -0x1

    goto :goto_b
.end method
