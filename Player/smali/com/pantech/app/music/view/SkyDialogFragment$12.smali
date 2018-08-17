.class Lcom/pantech/app/music/view/SkyDialogFragment$12;
.super Ljava/lang/Object;
.source "SkyDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SkyDialogFragment;->createListSelectPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyDialogFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V
    .registers 2

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$12;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1085
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$12;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_11

    .line 1087
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$12;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1089
    :cond_11
    return-void
.end method
