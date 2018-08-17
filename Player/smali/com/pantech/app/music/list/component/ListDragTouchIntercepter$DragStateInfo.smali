.class Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;
.super Ljava/lang/Object;
.source "ListDragTouchIntercepter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragStateInfo"
.end annotation


# instance fields
.field mDraggingCheckValue:Z

.field mDraggingPosition:I

.field mDraggingStartGroup:Z

.field mDraggingStartPosition:I

.field mDraggingStopped:Z

.field mHasFastScrollerPopup:Z

.field mIsScrolling:Z

.field mPrevSimulatedMotionAction:I

.field mStartFromCheckboxRange:Z

.field mStartFromOutSide:Z

.field final synthetic this$0:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->this$0:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragTouchEnable()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mStartFromCheckboxRange:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStopped:Z

    if-nez v0, :cond_a

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setDragTouchCanceled(Z)V
    .registers 5
    .param p1, "set"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->this$0:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;

    invoke-static {v0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->access$000(Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "VMusicDragMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag Cancel set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_20
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStopped:Z

    .line 98
    return-void
.end method

.method public setDragTouchStart(ZI)V
    .registers 6
    .param p1, "set"    # Z
    .param p2, "position"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->this$0:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;

    invoke-static {v0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->access$000(Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "VMusicDragMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start From Inside set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_20
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mStartFromCheckboxRange:Z

    .line 91
    iput p2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    .line 92
    return-void
.end method

.method public setStartFromOutSide(Z)V
    .registers 5
    .param p1, "set"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->this$0:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;

    invoke-static {v0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->access$000(Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "VMusicDragMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start From Outside set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_20
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mStartFromOutSide:Z

    .line 104
    return-void
.end method
