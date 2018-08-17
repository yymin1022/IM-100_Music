.class public Lcom/pantech/app/music/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final BLUR_RADIUS:F = 20.0f

.field private static final DESIRED_BITMAP_HEIGHT:I = 0xc8

.field private static final DESIRED_BITMAP_WIDTH:I = 0xc8


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v9, 0xa0

    const/4 v8, 0x0

    const/16 v7, 0xc8

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v7, :cond_3c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v6, v7, :cond_3c

    .line 42
    invoke-static {p1, v9, v9, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "inputBitmap":Landroid/graphics/Bitmap;
    :goto_15
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 48
    .local v1, "outputBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 49
    .local v2, "rs":Landroid/renderscript/RenderScript;
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 50
    .local v3, "theIntrinsic":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 51
    .local v4, "tmpIn":Landroid/renderscript/Allocation;
    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 52
    .local v5, "tmpOut":Landroid/renderscript/Allocation;
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v3, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 53
    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 54
    invoke-virtual {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 55
    invoke-virtual {v5, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 57
    return-object v1

    .line 44
    .end local v0    # "inputBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "outputBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "rs":Landroid/renderscript/RenderScript;
    .end local v3    # "theIntrinsic":Landroid/renderscript/ScriptIntrinsicBlur;
    .end local v4    # "tmpIn":Landroid/renderscript/Allocation;
    .end local v5    # "tmpOut":Landroid/renderscript/Allocation;
    :cond_3c
    invoke-static {p1, v7, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "inputBitmap":Landroid/graphics/Bitmap;
    goto :goto_15
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "targetWidth"    # F
    .param p2, "targetHeight"    # F

    .prologue
    .line 12
    if-nez p0, :cond_4

    .line 13
    const/4 v0, 0x0

    .line 27
    :goto_3
    return-object v0

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 16
    .local v5, "scaledWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 18
    .local v4, "scaledHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, p2, v6

    .line 19
    .local v1, "ratioHeight":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, p1, v6

    .line 21
    .local v2, "ratioWidth":F
    int-to-float v6, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 22
    int-to-float v6, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 24
    const/4 v6, 0x1

    invoke-static {p0, v5, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 25
    .local v3, "scaledBitmap":Landroid/graphics/Bitmap;
    int-to-float v6, v5

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v7, v4

    sub-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    float-to-int v8, p1

    float-to-int v9, p2

    invoke-static {v3, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 27
    .local v0, "croppedBitmap":Landroid/graphics/Bitmap;
    goto :goto_3
.end method
