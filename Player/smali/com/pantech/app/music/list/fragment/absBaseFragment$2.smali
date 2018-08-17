.class Lcom/pantech/app/music/list/fragment/absBaseFragment$2;
.super Ljava/lang/Object;
.source "absBaseFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absBaseFragment;->processOptionsMenu(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;)V
    .registers 2

    .prologue
    .line 523
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayResult(ZLcom/pantech/app/music/list/module/PlayInterface$PlayInfo;)V
    .registers 3
    .param p1, "result"    # Z
    .param p2, "object"    # Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;

    .prologue
    .line 528
    return-void
.end method
