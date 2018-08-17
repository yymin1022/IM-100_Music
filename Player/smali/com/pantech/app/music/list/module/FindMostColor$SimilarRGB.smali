.class Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;
.super Ljava/lang/Object;
.source "FindMostColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/FindMostColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimilarRGB"
.end annotation


# instance fields
.field mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

.field mCount:I

.field mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

.field final synthetic this$0:Lcom/pantech/app/music/list/module/FindMostColor;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/module/FindMostColor;III)V
    .registers 11
    .param p2, "red"    # I
    .param p3, "green"    # I
    .param p4, "blue"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    iput-object p1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->this$0:Lcom/pantech/app/music/list/module/FindMostColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/pantech/app/music/list/module/FindMostColor$RGB;-><init>(Lcom/pantech/app/music/list/module/FindMostColor;III)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    .line 59
    new-instance v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/pantech/app/music/list/module/FindMostColor$RGB;-><init>(Lcom/pantech/app/music/list/module/FindMostColor;III)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    .line 61
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    .line 63
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    int-to-long v4, p4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    .line 67
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v1, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    iget v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v1, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    iget v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    .line 69
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v1, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    iget v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    .line 70
    return-void
.end method


# virtual methods
.method public merge(III)V
    .registers 10
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    .line 75
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    .line 76
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    .line 78
    iget v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    .line 80
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v1, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    iget v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    .line 81
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v1, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    iget v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    .line 82
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mTotal:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v2, v1, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    iget v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mAVG:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
