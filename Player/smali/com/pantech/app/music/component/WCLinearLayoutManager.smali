.class public Lcom/pantech/app/music/component/WCLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "WCLinearLayoutManager.java"


# static fields
.field private static final CHILD_HEIGHT:I = 0x1

.field private static final CHILD_WIDTH:I = 0x0

.field private static final DEFAULT_CHILD_SIZE:I = 0x64

.field private static canMakeInsetsDirty:Z

.field private static insetsDirtyField:Ljava/lang/reflect/Field;


# instance fields
.field private final childDimensions:[I

.field private childSize:I

.field private hasChildSize:Z

.field private overScrollMode:I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final view:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->canMakeInsetsDirty:Z

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childSize:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->overScrollMode:I

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childSize:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->overScrollMode:I

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childSize:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->overScrollMode:I

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    .line 43
    iput-object p1, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    .line 44
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->overScrollMode:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;IZ)V
    .registers 5
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childSize:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->overScrollMode:I

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    .line 50
    iput-object p1, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    .line 51
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->overScrollMode:I

    .line 52
    return-void
.end method

.method private initChildDimensions(IIZ)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "vertical"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    aget v0, v0, v2

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    aget v0, v0, v3

    if-eqz v0, :cond_f

    .line 192
    :cond_e
    :goto_e
    return-void

    .line 185
    :cond_f
    if-eqz p3, :cond_1c

    .line 186
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    aput p1, v0, v2

    .line 187
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    iget v1, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childSize:I

    aput v1, v0, v3

    goto :goto_e

    .line 189
    :cond_1c
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    iget v1, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childSize:I

    aput v1, v0, v2

    .line 190
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    aput p2, v0, v3

    goto :goto_e
.end method

.method private logMeasureWarning(I)V
    .registers 2
    .param p1, "child"    # I

    .prologue
    .line 178
    return-void
.end method

.method private static makeInsetsDirty(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .registers 4
    .param p0, "p"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 263
    sget-boolean v1, Lcom/pantech/app/music/component/WCLinearLayoutManager;->canMakeInsetsDirty:Z

    if-nez v1, :cond_5

    .line 277
    :goto_4
    return-void

    .line 267
    :cond_5
    :try_start_5
    sget-object v1, Lcom/pantech/app/music/component/WCLinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_19

    .line 268
    const-class v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const-string v2, "mInsetsDirty"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/music/component/WCLinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    .line 269
    sget-object v1, Lcom/pantech/app/music/component/WCLinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 271
    :cond_19
    sget-object v1, Lcom/pantech/app/music/component/WCLinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_23} :catch_29

    goto :goto_4

    .line 272
    :catch_24
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->onMakeInsertDirtyFailed()V

    goto :goto_4

    .line 274
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_29
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->onMakeInsertDirtyFailed()V

    goto :goto_4
.end method

.method public static makeUnspecifiedSpec()I
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private measureChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V
    .registers 21
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "position"    # I
    .param p3, "widthSize"    # I
    .param p4, "heightSize"    # I
    .param p5, "dimensions"    # [I

    .prologue
    .line 223
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_8a

    move-result-object v1

    .line 233
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 235
    .local v8, "p":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getPaddingLeft()I

    move-result v12

    invoke-virtual {p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getPaddingRight()I

    move-result v13

    add-int v7, v12, v13

    .line 236
    .local v7, "hPadding":I
    invoke-virtual {p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getPaddingBottom()I

    move-result v13

    add-int v11, v12, v13

    .line 238
    .local v11, "vPadding":I
    iget v12, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v13, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v6, v12, v13

    .line 239
    .local v6, "hMargin":I
    iget v12, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v13, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v10, v12, v13

    .line 242
    .local v10, "vMargin":I
    invoke-static {v8}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->makeInsetsDirty(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 244
    iget-object v12, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v12}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v12

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v13

    add-int v5, v12, v13

    .line 247
    .local v5, "hDecoration":I
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v12

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v13

    add-int v9, v12, v13

    .line 249
    .local v9, "vDecoration":I
    add-int v12, v7, v6

    add-int/2addr v12, v5

    iget v13, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->canScrollHorizontally()Z

    move-result v14

    move/from16 v0, p3

    invoke-static {v0, v12, v13, v14}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v3

    .line 250
    .local v3, "childWidthSpec":I
    add-int v12, v11, v10

    add-int/2addr v12, v9

    iget v13, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->canScrollVertically()Z

    move-result v14

    move/from16 v0, p4

    invoke-static {v0, v12, v13, v14}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v2

    .line 252
    .local v2, "childHeightSpec":I
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 254
    const/4 v12, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    aput v13, p5, v12

    .line 255
    const/4 v12, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    aput v13, p5, v12

    .line 258
    invoke-static {v8}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->makeInsetsDirty(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 260
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childHeightSpec":I
    .end local v3    # "childWidthSpec":I
    .end local v5    # "hDecoration":I
    .end local v6    # "hMargin":I
    .end local v7    # "hPadding":I
    .end local v8    # "p":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v9    # "vDecoration":I
    .end local v10    # "vMargin":I
    .end local v11    # "vPadding":I
    :goto_89
    return-void

    .line 224
    :catch_8a
    move-exception v4

    .line 230
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_89
.end method

.method private static onMakeInsertDirtyFailed()V
    .registers 1

    .prologue
    .line 280
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->canMakeInsetsDirty:Z

    .line 286
    return-void
.end method


# virtual methods
.method public clearChildSize()V
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->hasChildSize:Z

    .line 209
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->setChildSize(I)V

    .line 210
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .registers 31
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    .line 68
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 69
    .local v25, "widthMode":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 71
    .local v21, "heightMode":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 72
    .local v6, "widthSize":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 74
    .local v12, "heightSize":I
    if-eqz v25, :cond_33

    const/16 v19, 0x1

    .line 75
    .local v19, "hasWidthSize":Z
    :goto_14
    if-eqz v21, :cond_36

    const/16 v18, 0x1

    .line 77
    .local v18, "hasHeightSize":Z
    :goto_18
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-ne v0, v3, :cond_39

    const/16 v16, 0x1

    .line 78
    .local v16, "exactWidth":Z
    :goto_20
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-ne v0, v3, :cond_3c

    const/4 v15, 0x1

    .line 80
    .local v15, "exactHeight":Z
    :goto_27
    invoke-static {}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->makeUnspecifiedSpec()I

    move-result v7

    .line 82
    .local v7, "unspecified":I
    if-eqz v16, :cond_3e

    if-eqz v15, :cond_3e

    .line 84
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 170
    :cond_32
    :goto_32
    return-void

    .line 74
    .end local v7    # "unspecified":I
    .end local v15    # "exactHeight":Z
    .end local v16    # "exactWidth":Z
    .end local v18    # "hasHeightSize":Z
    .end local v19    # "hasWidthSize":Z
    :cond_33
    const/16 v19, 0x0

    goto :goto_14

    .line 75
    .restart local v19    # "hasWidthSize":Z
    :cond_36
    const/16 v18, 0x0

    goto :goto_18

    .line 77
    .restart local v18    # "hasHeightSize":Z
    :cond_39
    const/16 v16, 0x0

    goto :goto_20

    .line 78
    .restart local v16    # "exactWidth":Z
    :cond_3c
    const/4 v15, 0x0

    goto :goto_27

    .line 88
    .restart local v7    # "unspecified":I
    .restart local v15    # "exactHeight":Z
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_cb

    const/16 v23, 0x1

    .line 90
    .local v23, "vertical":Z
    :goto_47
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v12, v1}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->initChildDimensions(IIZ)V

    .line 92
    const/16 v24, 0x0

    .line 93
    .local v24, "width":I
    const/16 v20, 0x0

    .line 99
    .local v20, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v22

    .line 102
    .local v22, "stateItemCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getItemCount()I

    move-result v14

    .line 106
    .local v14, "adapterItemCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5e
    if-ge v5, v14, :cond_8f

    .line 107
    if-eqz v23, :cond_d5

    .line 108
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->hasChildSize:Z

    if-nez v3, :cond_77

    .line 109
    move/from16 v0, v22

    if-ge v5, v0, :cond_cf

    .line 112
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->measureChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    .line 117
    :cond_77
    :goto_77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v20, v20, v3

    .line 118
    if-nez v5, :cond_89

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    const/4 v4, 0x0

    aget v24, v3, v4

    .line 121
    :cond_89
    if-eqz v18, :cond_104

    move/from16 v0, v20

    if-lt v0, v12, :cond_104

    .line 144
    :cond_8f
    if-eqz v16, :cond_10e

    .line 145
    move/from16 v24, v6

    .line 153
    :cond_93
    :goto_93
    if-eqz v15, :cond_123

    .line 154
    move/from16 v20, v12

    .line 162
    :cond_97
    :goto_97
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->setMeasuredDimension(II)V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->overScrollMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    .line 165
    if-eqz v23, :cond_b5

    if-eqz v18, :cond_bd

    move/from16 v0, v20

    if-lt v0, v12, :cond_bd

    :cond_b5
    if-nez v23, :cond_138

    if-eqz v19, :cond_bd

    move/from16 v0, v24

    if-ge v0, v6, :cond_138

    :cond_bd
    const/16 v17, 0x1

    .line 168
    .local v17, "fit":Z
    :goto_bf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    if-eqz v17, :cond_13b

    const/4 v3, 0x2

    :goto_c6
    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    goto/16 :goto_32

    .line 88
    .end local v5    # "i":I
    .end local v14    # "adapterItemCount":I
    .end local v17    # "fit":Z
    .end local v20    # "height":I
    .end local v22    # "stateItemCount":I
    .end local v23    # "vertical":Z
    .end local v24    # "width":I
    :cond_cb
    const/16 v23, 0x0

    goto/16 :goto_47

    .line 114
    .restart local v5    # "i":I
    .restart local v14    # "adapterItemCount":I
    .restart local v20    # "height":I
    .restart local v22    # "stateItemCount":I
    .restart local v23    # "vertical":Z
    .restart local v24    # "width":I
    :cond_cf
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->logMeasureWarning(I)V

    goto :goto_77

    .line 125
    :cond_d5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->hasChildSize:Z

    if-nez v3, :cond_ec

    .line 126
    move/from16 v0, v22

    if-ge v5, v0, :cond_108

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v5

    move v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->measureChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    .line 134
    :cond_ec
    :goto_ec
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v24, v24, v3

    .line 135
    if-nez v5, :cond_fe

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    const/4 v4, 0x1

    aget v20, v3, v4

    .line 138
    :cond_fe
    if-eqz v19, :cond_104

    move/from16 v0, v24

    if-ge v0, v6, :cond_8f

    .line 106
    :cond_104
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5e

    .line 131
    :cond_108
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->logMeasureWarning(I)V

    goto :goto_ec

    .line 147
    :cond_10e
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int v24, v24, v3

    .line 148
    if-eqz v19, :cond_93

    .line 149
    move/from16 v0, v24

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto/16 :goto_93

    .line 156
    :cond_123
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int v20, v20, v3

    .line 157
    if-eqz v18, :cond_97

    .line 158
    move/from16 v0, v20

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v20

    goto/16 :goto_97

    .line 165
    :cond_138
    const/16 v17, 0x0

    goto :goto_bf

    .line 168
    .restart local v17    # "fit":Z
    :cond_13b
    const/4 v3, 0x0

    goto :goto_c6
.end method

.method public setChildSize(I)V
    .registers 3
    .param p1, "childSize"    # I

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->hasChildSize:Z

    .line 214
    iget v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childSize:I

    if-eq v0, p1, :cond_c

    .line 215
    iput p1, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childSize:I

    .line 216
    invoke-virtual {p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->requestLayout()V

    .line 218
    :cond_c
    return-void
.end method

.method public setOrientation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    if-eqz v0, :cond_14

    .line 199
    invoke-virtual {p0}, Lcom/pantech/app/music/component/WCLinearLayoutManager;->getOrientation()I

    move-result v0

    if-eq v0, p1, :cond_14

    .line 200
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    aput v2, v0, v2

    .line 201
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->childDimensions:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 204
    :cond_14
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 205
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "overScrollMode"    # I

    .prologue
    .line 55
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_1e

    .line 56
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown overscroll mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1e
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "view == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2a
    iput p1, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->overScrollMode:I

    .line 59
    iget-object v0, p0, Lcom/pantech/app/music/component/WCLinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    .line 60
    return-void
.end method
