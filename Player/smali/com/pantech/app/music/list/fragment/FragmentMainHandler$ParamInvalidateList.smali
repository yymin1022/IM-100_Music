.class public Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;
.super Ljava/lang/Object;
.source "FragmentMainHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/FragmentMainHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamInvalidateList"
.end annotation


# instance fields
.field mAbsListView:Landroid/widget/AbsListView;

.field mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

.field mDatasetChanged:Z

.field mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Lcom/pantech/app/music/list/adapter/IAdapterCommon;Lcom/pantech/app/music/list/fragment/ChildListViewManager;Z)V
    .registers 5
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "IAdapter"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon;
    .param p3, "childListviewManager"    # Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    .param p4, "datasetChanged"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mAbsListView:Landroid/widget/AbsListView;

    .line 53
    iput-object p2, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 54
    iput-object p3, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    .line 56
    iput-boolean p4, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mDatasetChanged:Z

    .line 57
    return-void
.end method
