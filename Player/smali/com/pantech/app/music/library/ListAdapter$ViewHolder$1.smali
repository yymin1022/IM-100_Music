.class Lcom/pantech/app/music/library/ListAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 616
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$1;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$1;->val$this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$1;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->clickProcess()V

    .line 620
    return-void
.end method
