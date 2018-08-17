.class Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter$1;
.super Ljava/lang/Object;
.source "SeparaterExpandableAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;

.field final synthetic val$errorGroupPosition:I

.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;Landroid/view/ViewGroup;I)V
    .registers 4

    .prologue
    .line 683
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter$1;->this$0:Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;

    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter$1;->val$parentView:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter$1;->val$errorGroupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 687
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter$1;->val$parentView:Landroid/view/ViewGroup;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_f

    .line 689
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter$1;->val$parentView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 690
    .local v0, "expandableListview":Landroid/widget/ExpandableListView;
    iget v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter$1;->val$errorGroupPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 692
    .end local v0    # "expandableListview":Landroid/widget/ExpandableListView;
    :cond_f
    return-void
.end method
