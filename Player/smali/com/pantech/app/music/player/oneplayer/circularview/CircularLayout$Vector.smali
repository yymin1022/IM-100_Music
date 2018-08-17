.class public Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;
.super Ljava/lang/Object;
.source "CircularLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1323
    return-void
.end method


# virtual methods
.method crossProduct(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;)F
    .registers 5
    .param p1, "vector"    # Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;

    .prologue
    .line 1331
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->x:F

    iget v1, p1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->y:F

    iget v2, p1, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method set(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1326
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->x:F

    .line 1327
    iput p2, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->y:F

    .line 1328
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$Vector;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
