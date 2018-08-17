.class Lcom/pantech/app/music/library/ListAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 626
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$2;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$2;->val$this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 629
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$2;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$2;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v2}, Lcom/pantech/app/music/library/ListAdapter;->access$100(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    move-result-object v2

    invoke-static {v0, p2, v1, v2}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->access$200(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;ZLandroid/view/View;Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;)V

    .line 630
    return-void
.end method
