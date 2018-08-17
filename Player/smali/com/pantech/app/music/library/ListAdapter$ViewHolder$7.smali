.class Lcom/pantech/app/music/library/ListAdapter$ViewHolder$7;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 684
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$7;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$7;->val$this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 687
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$7;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$7;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSelectedView:Landroid/view/View;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$7;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v2}, Lcom/pantech/app/music/library/ListAdapter;->access$100(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->access$200(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;ZLandroid/view/View;Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;)V

    .line 688
    return v3
.end method
