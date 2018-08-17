.class public Lcom/pantech/app/music/utils/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/utils/ColorUtils$1;,
        Lcom/pantech/app/music/utils/ColorUtils$Colorful;,
        Lcom/pantech/app/music/utils/ColorUtils$Style;,
        Lcom/pantech/app/music/utils/ColorUtils$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicColorUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public static getColor(Landroid/content/Context;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorRes"    # I

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 17
    .local v0, "titleColor":I
    return v0
.end method

.method public static getColorfulColor(ILcom/pantech/app/music/utils/ColorUtils$Type;)Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    .registers 12
    .param p0, "color"    # I
    .param p1, "type"    # Lcom/pantech/app/music/utils/ColorUtils$Type;

    .prologue
    .line 41
    new-instance v3, Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;-><init>(I)V

    .line 42
    .local v3, "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    const/4 v8, 0x3

    new-array v4, v8, [F

    .line 44
    .local v4, "hsv":[F
    invoke-static {p0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 45
    const/4 v8, 0x0

    aget v0, v4, v8

    .line 46
    .local v0, "H":F
    const/4 v8, 0x1

    aget v1, v4, v8

    .line 47
    .local v1, "S":F
    const/4 v8, 0x2

    aget v2, v4, v8

    .line 51
    .local v2, "V":F
    const/4 v8, 0x3

    new-array v7, v8, [F

    .line 52
    .local v7, "resultHSV":[F
    sget-object v8, Lcom/pantech/app/music/utils/ColorUtils$1;->$SwitchMap$com$pantech$app$music$utils$ColorUtils$Type:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/ColorUtils$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_132

    .line 151
    :goto_22
    return-object v3

    .line 54
    :pswitch_23
    const/4 v8, 0x0

    aput v0, v7, v8

    .line 55
    const/4 v8, 0x1

    aput v1, v7, v8

    .line 60
    const/high16 v8, 0x3f400000    # 0.75f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_b0

    const v8, 0x3e99999a    # 0.3f

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_42

    const/high16 v8, 0x42200000    # 40.0f

    cmpl-float v8, v0, v8

    if-ltz v8, :cond_b0

    const/high16 v8, 0x43480000    # 200.0f

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_b0

    .line 61
    :cond_42
    const/4 v8, 0x2

    const/high16 v9, 0x3e800000    # 0.25f

    sub-float v9, v2, v9

    aput v9, v7, v8

    .line 66
    :goto_49
    const/16 v8, 0xff

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setMaincolor(I)V

    .line 79
    const/4 v8, 0x2

    aget v5, v7, v8

    .line 81
    .local v5, "listMainV":F
    const/high16 v8, 0x3e800000    # 0.25f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_b4

    .line 82
    const/4 v8, 0x2

    const v9, 0x3dcccccd    # 0.1f

    add-float/2addr v9, v5

    aput v9, v7, v8

    .line 87
    :goto_62
    const/16 v8, 0xf3

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setSubcolor(I)V

    .line 88
    const/16 v8, 0xff

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setOpaqueSubcolor(I)V

    .line 91
    const/4 v8, 0x1

    const v9, 0x3e4ccccd    # 0.2f

    aput v9, v7, v8

    .line 92
    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    .line 94
    const/16 v8, 0xff

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setPointcolor(I)V

    .line 97
    const/4 v8, 0x1

    const v9, 0x3eb33333    # 0.35f

    aput v9, v7, v8

    .line 98
    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    .line 100
    const/16 v8, 0xff

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setPointcolor2(I)V

    .line 103
    const/4 v8, 0x1

    aput v1, v7, v8

    .line 104
    const/4 v8, 0x2

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    .line 106
    const/16 v8, 0xcc

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setBlendingcolor(I)V

    goto/16 :goto_22

    .line 63
    .end local v5    # "listMainV":F
    :cond_b0
    const/4 v8, 0x2

    aput v2, v7, v8

    goto :goto_49

    .line 84
    .restart local v5    # "listMainV":F
    :cond_b4
    const/4 v8, 0x2

    const v9, 0x3e19999a    # 0.15f

    sub-float v9, v5, v9

    aput v9, v7, v8

    goto :goto_62

    .line 109
    .end local v5    # "listMainV":F
    :pswitch_bd
    const/4 v8, 0x0

    aput v0, v7, v8

    .line 112
    const/4 v8, 0x1

    aput v1, v7, v8

    .line 115
    const/high16 v8, 0x3f400000    # 0.75f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_124

    const v8, 0x3e99999a    # 0.3f

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_dc

    const/high16 v8, 0x42200000    # 40.0f

    cmpl-float v8, v0, v8

    if-ltz v8, :cond_124

    const/high16 v8, 0x43480000    # 200.0f

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_124

    .line 116
    :cond_dc
    const/4 v8, 0x2

    const/high16 v9, 0x3e800000    # 0.25f

    sub-float v9, v2, v9

    aput v9, v7, v8

    .line 121
    :goto_e3
    const/16 v8, 0xff

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setMaincolor(I)V

    .line 132
    const/4 v8, 0x2

    aget v6, v7, v8

    .line 134
    .local v6, "playerMainV":F
    const/high16 v8, 0x3e800000    # 0.25f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_128

    .line 135
    const/4 v8, 0x2

    const v9, 0x3dcccccd    # 0.1f

    add-float/2addr v9, v6

    aput v9, v7, v8

    .line 140
    :goto_fc
    const/16 v8, 0xf3

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setSubcolor(I)V

    .line 141
    const/16 v8, 0xff

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setOpaqueSubcolor(I)V

    .line 144
    const/4 v8, 0x1

    const v9, 0x3e4ccccd    # 0.2f

    aput v9, v7, v8

    .line 145
    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    .line 147
    const/16 v8, 0xff

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->setPointcolor(I)V

    goto/16 :goto_22

    .line 118
    .end local v6    # "playerMainV":F
    :cond_124
    const/4 v8, 0x2

    aput v2, v7, v8

    goto :goto_e3

    .line 137
    .restart local v6    # "playerMainV":F
    :cond_128
    const/4 v8, 0x2

    const v9, 0x3e19999a    # 0.15f

    sub-float v9, v6, v9

    aput v9, v7, v8

    goto :goto_fc

    .line 52
    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_23
        :pswitch_bd
    .end packed-switch
.end method

.method public static getTitleColor(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 22
    .local v0, "titleColor":I
    return v0
.end method

.method public static getTitleColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0201

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 27
    .local v0, "titleColor":Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "colorRes"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 32
    .local v0, "color":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 33
    return-void
.end method
