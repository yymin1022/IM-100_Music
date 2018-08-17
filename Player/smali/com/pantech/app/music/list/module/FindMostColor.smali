.class public Lcom/pantech/app/music/list/module/FindMostColor;
.super Ljava/lang/Object;
.source "FindMostColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;,
        Lcom/pantech/app/music/list/module/FindMostColor$RGB;
    }
.end annotation


# static fields
.field static final SIMILAR_COLOR_DIFFERENCE:I = 0xf


# instance fields
.field mBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mConfig:Landroid/graphics/Bitmap$Config;

.field mHeight:I

.field mRGBList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;",
            ">;"
        }
    .end annotation
.end field

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor;->mBitmap:Ljava/lang/ref/WeakReference;

    .line 100
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/module/FindMostColor;->mWidth:I

    .line 101
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/module/FindMostColor;->mHeight:I

    .line 102
    iget-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/FindMostColor;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 103
    return-void
.end method


# virtual methods
.method public calculate()I
    .registers 19

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 111
    .local v16, "lapTime":J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mHeight:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 118
    .local v3, "pix":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mHeight:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 120
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2c
    array-length v2, v3

    if-ge v13, v2, :cond_81

    .line 121
    aget v2, v3, v13

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v15, v2, 0xff

    .line 122
    .local v15, "r":I
    aget v2, v3, v13

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v12, v2, 0xff

    .line 123
    .local v12, "g":I
    aget v2, v3, v13

    and-int/lit16 v10, v2, 0xff

    .line 125
    .local v10, "b":I
    const/4 v11, 0x0

    .line 127
    .local v11, "finded":Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_67

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;

    iget-object v2, v2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    invoke-virtual {v2, v15, v12, v10}, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->isSimilarColor(III)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "finded":Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;
    check-cast v11, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;

    .line 136
    .restart local v11    # "finded":Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;
    :cond_67
    if-nez v11, :cond_7d

    .line 138
    new-instance v11, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;

    .end local v11    # "finded":Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;
    move-object/from16 v0, p0

    invoke-direct {v11, v0, v15, v12, v10}, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;-><init>(Lcom/pantech/app/music/list/module/FindMostColor;III)V

    .line 139
    .restart local v11    # "finded":Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_77
    add-int/lit8 v13, v13, 0x4

    goto :goto_2c

    .line 127
    :cond_7a
    add-int/lit8 v14, v14, 0x1

    goto :goto_41

    .line 145
    :cond_7d
    invoke-virtual {v11, v15, v12, v10}, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->merge(III)V

    goto :goto_77

    .line 188
    .end local v10    # "b":I
    .end local v11    # "finded":Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;
    .end local v12    # "g":I
    .end local v14    # "j":I
    .end local v15    # "r":I
    :cond_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Laps:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/app/music/list/module/FindMostColor$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/pantech/app/music/list/module/FindMostColor$1;-><init>(Lcom/pantech/app/music/list/module/FindMostColor;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;

    iget-object v2, v2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v4, v2, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;

    iget-object v2, v2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v6, v2, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    long-to-int v5, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/module/FindMostColor;->mRGBList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;

    iget-object v2, v2, Lcom/pantech/app/music/list/module/FindMostColor$SimilarRGB;->mAvg:Lcom/pantech/app/music/list/module/FindMostColor$RGB;

    iget-wide v6, v2, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    long-to-int v2, v6

    invoke-static {v4, v5, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    return v2
.end method
