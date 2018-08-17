.class Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$3;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->processSelectMenu(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;)V
    .registers 2

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayResult(ZLcom/pantech/app/music/list/module/PlayInterface$PlayInfo;)V
    .registers 5
    .param p1, "result"    # Z
    .param p2, "object"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onSelectMenuResult(IZLjava/lang/Object;)V

    .line 1279
    return-void
.end method
