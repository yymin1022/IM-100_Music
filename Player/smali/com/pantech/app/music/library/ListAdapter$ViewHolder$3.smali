.class Lcom/pantech/app/music/library/ListAdapter$ViewHolder$3;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListAdapter$ViewHolder;-><init>(Lcom/pantech/app/music/library/ListAdapter;Landroid/view/View;Lcom/pantech/app/music/library/IListHolderHelper$ViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/pantech/app/music/library/ListAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;Lcom/pantech/app/music/library/ListAdapter;)V
    .registers 3

    .prologue
    .line 637
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$3;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$3;->val$this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 640
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_1d

    .line 641
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$3;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$400(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 642
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$3;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$400(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$3;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;->onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 644
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method
