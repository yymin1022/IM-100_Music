.class Lcom/pantech/app/music/list/module/FindMostColor$1;
.super Ljava/lang/Object;
.source "FindMostColor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/FindMostColor;->calculate()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/FindMostColor;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/FindMostColor;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/pantech/app/music/list/module/FindMostColor$1;->this$0:Lcom/pantech/app/music/list/module/FindMostColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;)I
    .registers 5
    .param p1, "lhs"    # Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;
    .param p2, "rhs"    # Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;

    .prologue
    .line 195
    iget v0, p2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    iget v1, p1, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 190
    check-cast p1, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/module/FindMostColor$1;->compare(Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;)I

    move-result v0

    return v0
.end method
