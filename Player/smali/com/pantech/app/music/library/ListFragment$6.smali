.class Lcom/pantech/app/music/library/ListFragment$6;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment;->startActionMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment;)V
    .registers 2

    .prologue
    .line 608
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$6;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 611
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$6;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-boolean v0, v0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBoxChangedByItemCheck:Z

    if-eqz v0, :cond_c

    .line 612
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$6;->this$0:Lcom/pantech/app/music/library/ListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBoxChangedByItemCheck:Z

    .line 615
    :goto_b
    return-void

    .line 614
    :cond_c
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$6;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v0, p2}, Lcom/pantech/app/music/library/IListAdapter;->checkAll(Z)V

    goto :goto_b
.end method
