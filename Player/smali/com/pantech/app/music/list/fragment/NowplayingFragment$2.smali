.class Lcom/pantech/app/music/list/fragment/NowplayingFragment$2;
.super Ljava/lang/Object;
.source "NowplayingFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/listener/ISelectMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/NowplayingFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/NowplayingFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/NowplayingFragment;)V
    .registers 2

    .prologue
    .line 483
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/NowplayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectMenuResult(IZLjava/lang/Object;)V
    .registers 4
    .param p1, "menuID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 488
    return-void
.end method
