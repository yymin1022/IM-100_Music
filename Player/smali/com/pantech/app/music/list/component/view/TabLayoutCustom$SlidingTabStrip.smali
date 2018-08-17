.class Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "TabLayoutCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/view/TabLayoutCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 1086
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .line 1087
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1082
    iput v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedPosition:I

    .line 1084
    iput v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorLeft:I

    .line 1085
    iput v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorRight:I

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1089
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1090
    return-void
.end method

.method static synthetic access$1700(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;II)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1079
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$1902(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 1079
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2002(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;F)F
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 1079
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method private setIndicatorPosition(II)V
    .registers 4
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1178
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_f

    .line 1180
    :cond_8
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorLeft:I

    .line 1181
    iput p2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorRight:I

    .line 1182
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1184
    :cond_f
    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 9

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1159
    iget v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1161
    .local v3, "selectedTitle":Landroid/view/View;
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_55

    .line 1162
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1163
    .local v0, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1164
    .local v2, "right":I
    iget v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectionOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_51

    iget v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_51

    .line 1166
    iget v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1167
    .local v1, "nextTitle":Landroid/view/View;
    iget v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 1169
    iget v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 1175
    .end local v1    # "nextTitle":Landroid/view/View;
    :cond_51
    :goto_51
    invoke-direct {p0, v0, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 1176
    return-void

    .line 1173
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_55
    const/4 v2, -0x1

    .restart local v2    # "right":I
    move v0, v2

    .restart local v0    # "left":I
    goto :goto_51
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .registers 15
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x1

    .line 1186
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    if-ne v9, v1, :cond_43

    move v6, v1

    .line 1188
    .local v6, "isRtl":Z
    :goto_8
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1189
    .local v8, "targetView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1190
    .local v3, "targetLeft":I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1193
    .local v5, "targetRight":I
    iget v9, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedPosition:I

    sub-int v9, p1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v1, :cond_45

    .line 1195
    iget v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorLeft:I

    .line 1196
    .local v2, "startLeft":I
    iget v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorRight:I

    .line 1216
    .local v4, "startRight":I
    :goto_22
    if-ne v2, v3, :cond_26

    if-eq v4, v5, :cond_42

    .line 1217
    :cond_26
    new-instance v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$1;-><init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;IIII)V

    .line 1225
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-static {}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1800()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1226
    int-to-long v10, p2

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1227
    new-instance v1, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$2;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$2;-><init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1240
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1242
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_42
    return-void

    .line 1186
    .end local v2    # "startLeft":I
    .end local v3    # "targetLeft":I
    .end local v4    # "startRight":I
    .end local v5    # "targetRight":I
    .end local v6    # "isRtl":Z
    .end local v8    # "targetView":Landroid/view/View;
    :cond_43
    const/4 v6, 0x0

    goto :goto_8

    .line 1199
    .restart local v3    # "targetLeft":I
    .restart local v5    # "targetRight":I
    .restart local v6    # "isRtl":Z
    .restart local v8    # "targetView":Landroid/view/View;
    :cond_45
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    const/16 v9, 0x18

    invoke-static {v1, v9}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1500(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)I

    move-result v7

    .line 1200
    .local v7, "offset":I
    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedPosition:I

    if-ge p1, v1, :cond_5b

    .line 1202
    if-eqz v6, :cond_57

    .line 1203
    sub-int v4, v3, v7

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_22

    .line 1205
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_57
    add-int v4, v5, v7

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_22

    .line 1209
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_5b
    if-eqz v6, :cond_61

    .line 1210
    add-int v4, v5, v7

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_22

    .line 1212
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_61
    sub-int v4, v3, v7

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_22
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1246
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_23

    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorRight:I

    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorLeft:I

    if-le v0, v1, :cond_23

    .line 1247
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1250
    :cond_23
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1151
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1152
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1200(Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1155
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1157
    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1109
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v8, v9, :cond_e

    .line 1148
    :cond_d
    :goto_d
    return-void

    .line 1115
    :cond_e
    iget-object v8, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v8}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1300(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v8

    if-ne v8, v10, :cond_d

    iget-object v8, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v8}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1400(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v8

    if-ne v8, v10, :cond_d

    .line 1116
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 1117
    .local v1, "count":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1119
    .local v6, "unspecifiedSpec":I
    const/4 v4, 0x0

    .line 1120
    .local v4, "largestTabWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v7, v1

    .local v7, "z":I
    :goto_29
    if-ge v3, v7, :cond_3d

    .line 1121
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1122
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    .line 1123
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1120
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1125
    .end local v0    # "child":Landroid/view/View;
    :cond_3d
    if-lez v4, :cond_d

    .line 1129
    iget-object v8, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1500(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)I

    move-result v2

    .line 1130
    .local v2, "gutter":I
    mul-int v8, v4, v1

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getMeasuredWidth()I

    move-result v9

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_67

    .line 1133
    const/4 v3, 0x0

    :goto_53
    if-ge v3, v1, :cond_71

    .line 1134
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1135
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1136
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1137
    const/4 v8, 0x0

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1133
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 1142
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_67
    iget-object v8, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v8, v11}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1402(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)I

    .line 1143
    iget-object v8, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v8}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1600(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)V

    .line 1146
    :cond_71
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_d
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1200(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1106
    :goto_a
    return-void

    .line 1103
    :cond_b
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedPosition:I

    .line 1104
    iput p2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectionOffset:F

    .line 1105
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->updateIndicatorPosition()V

    goto :goto_a
.end method

.method setSelectedIndicatorColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1093
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1094
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 1096
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1097
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1098
    return-void
.end method
