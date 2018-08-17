.class Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortStringCompare;
.super Ljava/lang/Object;
.source "QuerySimilartySort.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/QuerySimilartySort$SimilaritySortMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/QuerySimilartySort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimilaritySortStringCompare"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public similarityMethod(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->computeSame(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public similarityMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "srcArtist"    # Ljava/lang/String;
    .param p4, "destArtist"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->computeSame(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p3, p4}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->computeSame(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
