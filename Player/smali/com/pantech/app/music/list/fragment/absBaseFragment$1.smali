.class Lcom/pantech/app/music/list/fragment/absBaseFragment$1;
.super Ljava/lang/Object;
.source "absBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/absBaseFragment;
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
    .line 94
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->queryList(I)V

    .line 100
    return-void
.end method
