.class Lcom/pantech/app/music/list/fragment/ListUboxFragment$1;
.super Ljava/lang/Object;
.source "ListUboxFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/component/DataNetworkWarningDialog$DimissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/ListUboxFragment;->showDataNetworkDialog()V
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
    .line 963
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 966
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$002(Lcom/pantech/app/music/list/fragment/ListUboxFragment;I)I

    .line 967
    return-void
.end method
