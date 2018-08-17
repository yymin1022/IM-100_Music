.class Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1$1;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;->createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmExists(I)V
    .registers 4
    .param p1, "stringID"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method
