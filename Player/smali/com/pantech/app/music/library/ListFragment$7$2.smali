.class Lcom/pantech/app/music/library/ListFragment$7$2;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment$7;->onItemSelected(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/library/ListFragment$7;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment$7;)V
    .registers 2

    .prologue
    .line 681
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$7$2;->this$1:Lcom/pantech/app/music/library/ListFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$7$2;->this$1:Lcom/pantech/app/music/library/ListFragment$7;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->requestRemoveGroups()I

    .line 685
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$7$2;->this$1:Lcom/pantech/app/music/library/ListFragment$7;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    .line 686
    return-void
.end method
