.class Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;
.super Ljava/lang/Object;
.source "AdapterBindHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidateFragmentJob"
.end annotation


# instance fields
.field mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IFragmentCommon;)V
    .registers 2
    .param p1, "fragment"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    .line 114
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    if-eqz v0, :cond_a

    .line 120
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$InvalidateFragmentJob;->mIFragment:Lcom/pantech/app/music/list/fragment/IFragmentCommon;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/music/list/fragment/IFragmentCommon;->invalidateFragment(Z)V

    .line 121
    :cond_a
    return-void
.end method
