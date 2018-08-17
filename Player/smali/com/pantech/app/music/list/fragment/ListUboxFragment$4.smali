.class Lcom/pantech/app/music/list/fragment/ListUboxFragment$4;
.super Ljava/lang/Object;
.source "ListUboxFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/ListUboxFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 2

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDone()V
    .registers 4

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    .line 1565
    return-void
.end method
