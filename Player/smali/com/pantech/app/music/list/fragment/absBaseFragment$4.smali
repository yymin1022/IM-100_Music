.class Lcom/pantech/app/music/list/fragment/absBaseFragment$4;
.super Ljava/lang/Object;
.source "absBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absBaseFragment;->createHintLayer(Landroid/view/View;)V
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
    .line 1079
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 1084
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getHintPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1085
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1086
    return-void
.end method
