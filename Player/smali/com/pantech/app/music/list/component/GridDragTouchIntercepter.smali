.class public Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;
.super Ljava/lang/Object;
.source "GridDragTouchIntercepter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;
    }
.end annotation


# static fields
.field private static final EVENT_THRESHOLD:F = 100.0f

.field private static final TAG:Ljava/lang/String; = "DraggableGridViewListener"


# instance fields
.field private mBorderBottom:I

.field private mBorderLeft:I

.field private mBorderRight:I

.field private mBorderTop:I

.field private mCheckedState:Z

.field private mDebuggable:Z

.field private mEventState:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

.field private mFirstItemPos:I

.field private mFirstTouchX:F

.field private mFirstTouchY:F

.field private mGridView:Landroid/widget/GridView;

.field private mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

.field private mItemPosToCheck:I


# direct methods
.method public constructor <init>(Landroid/widget/GridView;Lcom/pantech/app/music/list/adapter/IAdapterCommon;)V
    .registers 4
    .param p1, "gridView"    # Landroid/widget/GridView;
    .param p2, "adapter"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mDebuggable:Z

    .line 45
    iput-object p1, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    .line 46
    iput-object p2, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 47
    return-void
.end method

.method private changeBorder(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 167
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mDebuggable:Z

    if-eqz v2, :cond_b

    const-string v2, "DraggableGridViewListener"

    const-string v3, "SIMSON - Border Changed..."

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_b
    iget-object v2, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v0

    .line 169
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_25

    .line 171
    iget-object v2, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->setBorder(Landroid/view/View;)V

    .line 174
    .end local v1    # "view":Landroid/view/View;
    :cond_25
    return-void
.end method

.method private isInBorder(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 157
    iget v1, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mBorderLeft:I

    if-ge p1, v1, :cond_6

    .line 162
    :cond_5
    :goto_5
    return v0

    .line 158
    :cond_6
    iget v1, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mBorderRight:I

    if-gt p1, v1, :cond_5

    .line 159
    iget v1, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mBorderTop:I

    if-lt p2, v1, :cond_5

    .line 160
    iget v1, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mBorderBottom:I

    if-gt p2, v1, :cond_5

    .line 162
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private setBorder(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mDebuggable:Z

    if-eqz v0, :cond_b

    const-string v0, "DraggableGridViewListener"

    const-string v1, "SIMSON - setBorder"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_b
    if-eqz p1, :cond_25

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mBorderTop:I

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mBorderBottom:I

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mBorderLeft:I

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mBorderRight:I

    .line 153
    :cond_25
    return-void
.end method


# virtual methods
.method public changeCheckState(Landroid/widget/AbsListView;IZ)V
    .registers 8
    .param p1, "listview"    # Landroid/widget/AbsListView;
    .param p2, "position"    # I
    .param p3, "check"    # Z

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->getTargetView(Landroid/widget/AbsListView;I)Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    move-result-object v0

    .line 202
    .local v0, "checkTargetView":Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 206
    iget-boolean v1, p0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mDebuggable:Z

    if-eqz v1, :cond_38

    .line 207
    const-string v1, "VMusicDragMultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTargetView.setChecked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")(was:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_38
    invoke-virtual {v0, p3}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->setChecked(Z)V

    .line 211
    :cond_3b
    return-void
.end method

.method public getCheckedState(Landroid/widget/AbsListView;I)Z
    .registers 6
    .param p1, "listview"    # Landroid/widget/AbsListView;
    .param p2, "position"    # I

    .prologue
    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->getTargetView(Landroid/widget/AbsListView;I)Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    move-result-object v0

    .line 193
    .local v0, "checkTargetView":Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;
    const v2, 0x7f10000f

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 195
    .local v1, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-boolean v2, v1, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mIsChecked:Z

    return v2
.end method

.method public getTargetView(Landroid/widget/AbsListView;I)Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;
    .registers 6
    .param p1, "listview"    # Landroid/widget/AbsListView;
    .param p2, "position"    # I

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, "childView":Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 181
    const v2, 0x7f10010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, "checkTargetView":Landroid/view/View;
    instance-of v2, v0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    if-eqz v2, :cond_1a

    .line 183
    check-cast v0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    .line 186
    .end local v0    # "checkTargetView":Landroid/view/View;
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 25
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 54
    .local v7, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 56
    .local v8, "y":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_170

    .line 140
    :cond_f
    :goto_f
    const/4 v2, 0x0

    :goto_10
    return v2

    .line 60
    :pswitch_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mDebuggable:Z

    if-eqz v2, :cond_24

    .line 61
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mDebuggable:Z

    if-eqz v2, :cond_24

    const-string v2, "DraggableGridViewListener"

    const-string v3, "SIMSON - MotionEvent.ACTION_DOWN"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_24
    sget-object v2, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;->SCROLL:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mEventState:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

    .line 64
    move-object/from16 v0, p0

    iput v7, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mFirstTouchX:F

    .line 65
    move-object/from16 v0, p0

    iput v8, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mFirstTouchY:F

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    float-to-int v3, v7

    float-to-int v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v21

    .line 68
    .local v21, "pos":I
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_f

    .line 72
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mItemPosToCheck:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mFirstItemPos:I

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 75
    .local v20, "item":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->setBorder(Landroid/view/View;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mItemPosToCheck:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->getCheckedState(Landroid/widget/AbsListView;I)Z

    move-result v2

    if-nez v2, :cond_7e

    const/4 v2, 0x1

    :goto_79
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mCheckedState:Z

    goto :goto_f

    :cond_7e
    const/4 v2, 0x0

    goto :goto_79

    .line 81
    .end local v20    # "item":Landroid/view/ViewGroup;
    .end local v21    # "pos":I
    :pswitch_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mEventState:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

    sget-object v3, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;->SCROLL:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

    if-ne v2, v3, :cond_b7

    .line 83
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mFirstTouchX:F

    sub-float v2, v7, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 84
    .local v18, "diffX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mFirstTouchY:F

    sub-float v2, v8, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 86
    .local v19, "diffY":F
    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v18, v2

    if-gtz v2, :cond_a8

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v19, v2

    if-lez v2, :cond_f

    .line 88
    :cond_a8
    cmpl-float v2, v18, v19

    if-lez v2, :cond_b4

    sget-object v2, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;->SELECTE:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

    :goto_ae
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mEventState:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

    goto/16 :goto_f

    :cond_b4
    sget-object v2, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;->SCROLL:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

    goto :goto_ae

    .line 94
    .end local v18    # "diffX":F
    .end local v19    # "diffY":F
    :cond_b7
    float-to-int v2, v7

    float-to-int v3, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->isInBorder(II)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x1

    goto/16 :goto_10

    .line 96
    :cond_c4
    float-to-int v2, v7

    float-to-int v3, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->changeBorder(II)V

    .line 99
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mFirstItemPos:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mItemPosToCheck:I

    if-ne v2, v3, :cond_ef

    .line 101
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v16

    .line 102
    .local v16, "actionCancel":Landroid/view/MotionEvent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 106
    .end local v16    # "actionCancel":Landroid/view/MotionEvent;
    :cond_ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    float-to-int v3, v7

    float-to-int v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v17

    .line 107
    .local v17, "curItemPos":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_122

    .line 109
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mDebuggable:Z

    if-eqz v2, :cond_10b

    const-string v2, "DraggableGridViewListener"

    const-string v3, "SIMSON - curItemPos != AdapterView.INVALID_POSITION"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mItemPosToCheck:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mCheckedState:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->changeCheckState(Landroid/widget/AbsListView;IZ)V

    .line 112
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mItemPosToCheck:I

    .line 115
    :cond_122
    const/4 v2, 0x1

    goto/16 :goto_10

    .line 120
    .end local v17    # "curItemPos":I
    :pswitch_125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mEventState:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

    sget-object v3, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;->SELECTE:Lcom/pantech/app/music/list/component/GridDragTouchIntercepter$EVENT_STATE;

    if-ne v2, v3, :cond_f

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    float-to-int v3, v7

    float-to-int v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v21

    .line 123
    .restart local v21    # "pos":I
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_f

    .line 126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mFirstItemPos:I

    move/from16 v0, v21

    if-ne v2, v0, :cond_15e

    .line 128
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v16

    .line 129
    .restart local v16    # "actionCancel":Landroid/view/MotionEvent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 133
    .end local v16    # "actionCancel":Landroid/view/MotionEvent;
    :cond_15e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->mCheckedState:Z

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1, v3}, Lcom/pantech/app/music/list/component/GridDragTouchIntercepter;->changeCheckState(Landroid/widget/AbsListView;IZ)V

    .line 134
    const/4 v2, 0x1

    goto/16 :goto_10

    .line 56
    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_11
        :pswitch_125
        :pswitch_80
    .end packed-switch
.end method
