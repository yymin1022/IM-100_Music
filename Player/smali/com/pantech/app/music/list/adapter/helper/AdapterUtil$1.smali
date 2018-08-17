.class final Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$1;
.super Ljava/lang/Object;
.source "AdapterUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->setKeywordTextHilight(Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spanned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;)I
    .registers 5
    .param p1, "obj1"    # Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;
    .param p2, "obj2"    # Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    .prologue
    .line 110
    iget v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    iget v1, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    if-ge v0, v1, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget v0, p1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    iget v1, p2, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$1;->compare(Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;)I

    move-result v0

    return v0
.end method
