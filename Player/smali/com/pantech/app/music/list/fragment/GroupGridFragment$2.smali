.class Lcom/pantech/app/music/list/fragment/GroupGridFragment$2;
.super Ljava/lang/Object;
.source "GroupGridFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/GroupGridFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/GroupGridFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/GroupGridFragment;)V
    .registers 2

    .prologue
    .line 471
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/GroupGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDone()V
    .registers 4

    .prologue
    .line 475
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/GroupGridFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    .line 476
    return-void
.end method
