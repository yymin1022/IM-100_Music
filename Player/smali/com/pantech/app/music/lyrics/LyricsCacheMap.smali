.class public Lcom/pantech/app/music/lyrics/LyricsCacheMap;
.super Ljava/util/LinkedHashMap;
.source "LyricsCacheMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x35caL


# instance fields
.field private final maxSize_:I


# direct methods
.method public constructor <init>(IFZ)V
    .registers 5
    .param p1, "maxSize"    # I
    .param p2, "loadFactor"    # F
    .param p3, "eldest"    # Z

    .prologue
    .line 21
    .local p0, "this":Lcom/pantech/app/music/lyrics/LyricsCacheMap;, "Lcom/pantech/app/music/lyrics/LyricsCacheMap<TK;TV;>;"
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 22
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/pantech/app/music/lyrics/LyricsCacheMap;->maxSize_:I

    .line 23
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/pantech/app/music/lyrics/LyricsCacheMap;, "Lcom/pantech/app/music/lyrics/LyricsCacheMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/pantech/app/music/lyrics/LyricsCacheMap;->size()I

    move-result v0

    iget v1, p0, Lcom/pantech/app/music/lyrics/LyricsCacheMap;->maxSize_:I

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
