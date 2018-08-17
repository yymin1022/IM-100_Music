.class public abstract Lcom/pantech/app/music/list/fragment/absBaseFragment;
.super Landroid/app/Fragment;
.source "absBaseFragment.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;
.implements Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;
.implements Lcom/pantech/app/music/list/fragment/IFragmentCommon;
.implements Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;
.implements Lcom/pantech/app/music/list/fragment/IViewPagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/fragment/absBaseFragment$5;,
        Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;,
        Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "absBaseFragment"


# instance fields
.field mActivityVisible:Z

.field mActivityWillRestarting:Z

.field mAdapterObserver:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

.field mBufferingProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

.field mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

.field mCheckEmptyPage:Lcom/pantech/app/music/list/module/InvalidateEmptyPage;

.field mCursorLock:Ljava/lang/Object;

.field mDialogProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

.field mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

.field mFragmentDetaching:Z

.field mHintLayer:Landroid/view/ViewGroup;

.field mHintText:Landroid/widget/TextView;

.field mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

.field mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

.field mLastUpdateTime:J

.field mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

.field mListHeaderView:Landroid/view/View;

.field mListViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mMainQuery:Ljava/lang/Runnable;

.field private mOrientation:I

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mPendingRequery:Z

.field mPendingSec:J

.field mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

.field mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

.field mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

.field private mTouchLockMask:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mCheckEmptyPage:Lcom/pantech/app/music/list/module/InvalidateEmptyPage;

    .line 91
    new-instance v0, Lcom/pantech/app/music/list/component/SmartFalg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/component/SmartFalg;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    .line 93
    new-instance v0, Lcom/pantech/app/music/list/fragment/absBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment$1;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mMainQuery:Ljava/lang/Runnable;

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mLastUpdateTime:J

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mCursorLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OnUBoxSessionChanged(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnUBoxSessionChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_1d

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 721
    return-void

    .line 720
    :cond_1d
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method abstract clearAdapter()V
.end method

.method public createHintLayer(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 1068
    const v3, 0x7f1000b1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    .line 1070
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isNeedHintLayer()Z

    move-result v3

    if-eqz v3, :cond_da

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 1072
    const v3, 0x7f1000b4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    .line 1073
    const v3, 0x7f1000b2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1075
    .local v0, "hintButton":Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    if-nez v3, :cond_3d

    .line 1132
    .end local v0    # "hintButton":Landroid/widget/ImageButton;
    :cond_3c
    :goto_3c
    return-void

    .line 1078
    .restart local v0    # "hintButton":Landroid/widget/ImageButton;
    :cond_3d
    new-instance v3, Lcom/pantech/app/music/list/fragment/absBaseFragment$4;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment$4;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3c

    .line 1091
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getHintPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1093
    .local v2, "visible":I
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v3

    if-gtz v3, :cond_60

    const/4 v1, 0x1

    .line 1095
    .local v1, "isEmpty":Z
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createHintLayer preference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " itemCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1097
    if-eqz v1, :cond_b8

    .line 1098
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1102
    :goto_8d
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    if-eqz v3, :cond_3c

    .line 1104
    sget-object v3, Lcom/pantech/app/music/list/fragment/absBaseFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_e6

    :pswitch_aa
    goto :goto_3c

    .line 1108
    :pswitch_ab
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    if-eqz v3, :cond_3c

    .line 1109
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    const v4, 0x7f0800d4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3c

    .line 1100
    :cond_b8
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8d

    .line 1115
    :pswitch_be
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    if-eqz v3, :cond_3c

    .line 1116
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    const v4, 0x7f0800d5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3c

    .line 1120
    :pswitch_cc
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    if-eqz v3, :cond_3c

    .line 1121
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    const v4, 0x7f0800d6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3c

    .line 1129
    .end local v0    # "hintButton":Landroid/widget/ImageButton;
    .end local v1    # "isEmpty":Z
    .end local v2    # "visible":I
    :cond_da
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3c

    .line 1130
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3c

    .line 1104
    nop

    :pswitch_data_e6
    .packed-switch 0x2
        :pswitch_ab
        :pswitch_aa
        :pswitch_ab
        :pswitch_be
        :pswitch_be
        :pswitch_be
        :pswitch_cc
    .end packed-switch
.end method

.method public doCommand(ILjava/lang/Object;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCommand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v1, :cond_23

    const-string v1, ""

    :goto_11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 863
    :goto_22
    return-void

    .line 767
    :cond_23
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    goto :goto_11

    .line 772
    :cond_2a
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/module/PlayInterface;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    .line 863
    .local v0, "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    goto :goto_22
.end method

.method public drawNoContentsPage(Z)V
    .registers 3
    .param p1, "empty"    # Z

    .prologue
    .line 1136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->drawNoContentsPage(ZZ)V

    .line 1137
    return-void
.end method

.method public drawNoContentsPage(ZZ)V
    .registers 14
    .param p1, "empty"    # Z
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 1141
    const/4 v3, 0x0

    .line 1142
    .local v3, "txtNoContentPage":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    .line 1143
    .local v4, "txtNoContentPageIcon":Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 1144
    .local v5, "txtNoContentPageSubText":Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 1145
    .local v6, "txtNoContentPageText":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 1147
    .local v0, "btnImportContents":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_f

    .line 1236
    :cond_e
    :goto_e
    return-void

    .line 1154
    :cond_f
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1000b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "txtNoContentPage":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 1156
    .restart local v3    # "txtNoContentPage":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_e

    .line 1159
    if-nez p2, :cond_28

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-ne v7, v9, :cond_28

    if-eqz p1, :cond_e

    .line 1162
    :cond_28
    if-nez p2, :cond_33

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_33

    const/4 v7, 0x1

    if-eq p1, v7, :cond_e

    .line 1165
    :cond_33
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onPageEmpty(Z)V

    .line 1167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v8}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " drawNoContentsPage fVisible : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1169
    const/4 v1, 0x0

    .line 1195
    .local v1, "goneLayout":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_e

    .line 1197
    if-eqz p1, :cond_91

    .line 1199
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1203
    if-eqz v4, :cond_6b

    .line 1205
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getEmptyPageItem()Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;

    move-result-object v7

    iget v7, v7, Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;->mIcon:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1210
    :cond_6b
    if-eqz v6, :cond_78

    .line 1212
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getEmptyPageItem()Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;

    move-result-object v7

    iget v7, v7, Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;->mMainText:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1216
    :cond_78
    if-eqz v5, :cond_e

    .line 1218
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getEmptyPageItem()Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;

    move-result-object v7

    iget v2, v7, Lcom/pantech/app/music/list/component/EmptyFragmentPageItem;->mSubText:I

    .line 1220
    .local v2, "subTxt":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_89

    .line 1222
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e

    .line 1226
    :cond_89
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1227
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e

    .line 1233
    .end local v2    # "subTxt":I
    :cond_91
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e
.end method

.method abstract getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;
.end method

.method public getFragmentHandler()Lcom/pantech/app/music/list/fragment/FragmentMainHandler;
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    return-object v0
.end method

.method public getPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public getService()Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0}, Lcom/pantech/app/music/list/activity/IListActivity;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentFragment()Z
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isCurrentFragment()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isLandscape()Z
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orientaion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mOrientation:I

    if-ne v0, v2, :cond_23

    const-string v0, " LANDSCAPE "

    :goto_12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 932
    iget v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mOrientation:I

    if-ne v0, v2, :cond_26

    const/4 v0, 0x1

    :goto_22
    return v0

    .line 930
    :cond_23
    const-string v0, " PORTRAIT "

    goto :goto_12

    .line 932
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 344
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->setRetainInstance(Z)V

    .line 345
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->setMenuVisibility(Z)V

    .line 354
    if-nez p1, :cond_d

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_38

    .line 356
    :cond_d
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_19

    .line 357
    const-string v1, "listState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListViewState:Landroid/util/SparseArray;

    .line 359
    :cond_19
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_38

    .line 361
    new-instance v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListViewState:Landroid/util/SparseArray;

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;-><init>(Landroid/widget/AbsListView;Landroid/util/SparseArray;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    .line 362
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 363
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    .end local v0    # "msg":Landroid/os/Message;
    :cond_38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 368
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_20

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 400
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 401
    return-void

    .line 398
    :cond_20
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mFragmentDetaching:Z

    .line 286
    instance-of v1, p1, Lcom/pantech/app/music/list/activity/IListActivity;

    if-eqz v1, :cond_5a

    move-object v1, p1

    .line 287
    check-cast v1, Lcom/pantech/app/music/list/activity/IListActivity;

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    .line 291
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 293
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_28

    .line 294
    const-string v1, "com.pantech.app.music.extras.listinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/PageInfoType;

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 295
    new-instance v1, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Lcom/pantech/app/music/list/PageInfoType;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mCheckEmptyPage:Lcom/pantech/app/music/list/module/InvalidateEmptyPage;

    .line 298
    :cond_28
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mOrientation:I

    .line 299
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->setOrientation(I)V

    .line 301
    const-string v1, "absBaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttach() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 289
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_5a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Activity must implements IListActivity !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 470
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_2d

    const-string v0, ""

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v0

    if-gtz v0, :cond_34

    move v0, v1

    :goto_29
    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->drawNoContentsPage(ZZ)V

    .line 475
    return-void

    .line 472
    :cond_2d
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_15

    .line 474
    :cond_34
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mActivityWillRestarting:Z

    .line 308
    new-instance v0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    .line 309
    const-string v1, "absBaseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_3b

    const-string v0, ""

    :goto_24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

    invoke-static {}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->getInstance()Lcom/pantech/app/music/list/module/CommonThreadHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mAdapterObserver:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

    .line 311
    return-void

    .line 309
    :cond_3b
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_24
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateOptionsMenu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_20

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 483
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 484
    return-void

    .line 481
    :cond_20
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_21

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 318
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 317
    :cond_21
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 450
    const-string v1, "absBaseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_2a

    const-string v0, ""

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mActivityWillRestarting:Z

    .line 453
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->terminate()V

    .line 454
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 455
    return-void

    .line 450
    :cond_2a
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_13
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 444
    const-string v1, "absBaseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyView() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_22

    const-string v0, ""

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 446
    return-void

    .line 444
    :cond_22
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_13
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 460
    const-string v1, "absBaseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetach() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_25

    const-string v0, ""

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mFragmentDetaching:Z

    .line 462
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 463
    return-void

    .line 460
    :cond_25
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_13
.end method

.method public onMTPConnected()V
    .registers 3

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMTPConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_34

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 613
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onMTPConnected()V

    .line 614
    :cond_33
    return-void

    .line 610
    :cond_34
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onMTPDisConnected()V
    .registers 3

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMTPDisConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_34

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 623
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onMTPDisConnected()V

    .line 624
    :cond_33
    return-void

    .line 620
    :cond_34
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onMTPFileModified()V
    .registers 5

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMTPFileModified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_4c

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v0

    if-gtz v0, :cond_34

    .line 598
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mMainQuery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 599
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mMainQuery:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    :cond_34
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 603
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onMTPFileModified()V

    .line 604
    :cond_4b
    return-void

    .line 590
    :cond_4c
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onMediaScanner(ZLandroid/content/Intent;)V
    .registers 5
    .param p1, "start"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaScanner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_46

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 632
    if-nez p1, :cond_2e

    .line 634
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mAdapterObserver:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;->onChange(Z)V

    .line 637
    :cond_2e
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 638
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onMediaScanner(ZLandroid/content/Intent;)V

    .line 639
    :cond_45
    return-void

    .line 629
    :cond_46
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptionsItemSelected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_21

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 500
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 498
    :cond_21
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method abstract onPageEmpty(Z)V
.end method

.method public onPageSelected()V
    .registers 5

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_51

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 547
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onPageSelected()V

    .line 552
    :cond_33
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->updateHintLayer(Landroid/view/View;)V

    .line 554
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->setIsCurrentFragment(Z)V

    .line 556
    iget-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPendingRequery:Z

    if-eqz v0, :cond_50

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPendingRequery:Z

    .line 559
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    :cond_50
    return-void

    .line 544
    :cond_51
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onPageUnSelected()V
    .registers 3

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageUnSelected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 571
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 574
    :cond_29
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 575
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onPageUnSelected()V

    .line 577
    :cond_40
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->setIsCurrentFragment(Z)V

    .line 578
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 429
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 430
    return-void
.end method

.method public onPlayingQueueChanged(I)V
    .registers 5
    .param p1, "queueSize"    # I

    .prologue
    .line 681
    const-string v0, "absBaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayingQueueChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->invalidateFragment(Z)V

    .line 694
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 695
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onPlayingQueueChanged(I)V

    .line 696
    :cond_39
    return-void
.end method

.method public onPlayingStatusChanged(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 646
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "action":Ljava/lang/String;
    const-string v1, "absBaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayingStatusChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "com.pantech.app.music.safebox.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "com.pantech.app.music.safebox.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 655
    :cond_42
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->invalidateFragment(Z)V

    .line 658
    :cond_46
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 660
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/ListUtil;->isBuffering(Lcom/pantech/app/music/service/IMusicPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 662
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mBufferingProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v1, :cond_61

    .line 663
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mBufferingProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 667
    :cond_61
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 671
    :cond_69
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v1

    if-eqz v1, :cond_87

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 674
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->invalidateViews()V

    .line 675
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onPlayingStatusChanged(Landroid/content/Intent;)V

    .line 677
    :cond_87
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepareOptionsMenu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_20

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 491
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 492
    return-void

    .line 489
    :cond_20
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_38

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 735
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mReadyToRestore:Z

    .line 742
    :cond_2d
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    new-instance v1, Lcom/pantech/app/music/list/fragment/absBaseFragment$3;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment$3;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->post(Ljava/lang/Runnable;)Z

    .line 748
    return-void

    .line 726
    :cond_38
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 418
    const-string v1, "absBaseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_2c

    const-string v0, ""

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mActivityWillRestarting:Z

    .line 422
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->updateHintLayer(Landroid/view/View;)V

    .line 424
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 425
    return-void

    .line 418
    :cond_2c
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_13
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_3f

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListViewState:Landroid/util/SparseArray;

    .line 385
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 387
    if-eqz p1, :cond_3b

    .line 388
    const-string v0, "listState"

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListViewState:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 391
    :cond_3b
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 392
    return-void

    .line 374
    :cond_3f
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 505
    const-string v0, "absBaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 508
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 509
    :cond_2f
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 405
    const-string v1, "absBaseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_3f

    const-string v0, ""

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mActivityVisible:Z

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mFragmentDetaching:Z

    .line 410
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 411
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onStart()V

    .line 413
    :cond_3b
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 414
    return-void

    .line 405
    :cond_3f
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_13
.end method

.method public onStop()V
    .registers 4

    .prologue
    .line 434
    const-string v1, "absBaseFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_3c

    const-string v0, ""

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mActivityVisible:Z

    .line 437
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 438
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onStop()V

    .line 439
    :cond_38
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 440
    return-void

    .line 434
    :cond_3c
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_13
.end method

.method public onTouchLockFreed(J)V
    .registers 8
    .param p1, "mask"    # J

    .prologue
    .line 753
    iget-wide v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mTouchLockMask:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mTouchLockMask:J

    .line 755
    return-void
.end method

.method public onUserPresent()V
    .registers 3

    .prologue
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserPresent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_1d

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 761
    return-void

    .line 760
    :cond_1d
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11
.end method

.method public onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V
    .registers 8
    .param p1, "add"    # Z
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    if-ne p3, v0, :cond_a

    .line 708
    const-string v0, "onViewHierachyChanged headerview skip"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 714
    :goto_9
    return-void

    .line 712
    :cond_a
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mCheckEmptyPage:Lcom/pantech/app/music/list/module/InvalidateEmptyPage;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 713
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mCheckEmptyPage:Lcom/pantech/app/music/list/module/InvalidateEmptyPage;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public processOptionsMenu(Landroid/view/MenuItem;)Z
    .registers 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 518
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_3c

    move v5, v6

    .line 538
    :goto_a
    return v5

    .line 521
    :sswitch_b
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/module/PlayInterface;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    .line 522
    .local v0, "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mCursorLock:Ljava/lang/Object;

    sget-object v4, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    new-instance v8, Lcom/pantech/app/music/list/fragment/absBaseFragment$2;

    invoke-direct {v8, p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment$2;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;)V

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/music/list/module/PlayInterface;->playSong(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZIILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    goto :goto_a

    .line 533
    .end local v0    # "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    :sswitch_26
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getHintPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 534
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->updateHintLayer(Landroid/view/View;)V

    goto :goto_a

    .line 518
    nop

    :sswitch_data_3c
    .sparse-switch
        0x2 -> :sswitch_b
        0x10 -> :sswitch_26
    .end sparse-switch
.end method

.method abstract queryList(I)V
.end method

.method public requestQueryList(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->queryList(I)V

    .line 274
    return-void
.end method

.method public resetIndexScrollerPosition()V
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-eqz v0, :cond_9

    .line 896
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmResetIndexbarPosition()V

    .line 897
    :cond_9
    return-void
.end method

.method protected setButtonLock(IJ)Z
    .registers 12
    .param p1, "lockTime"    # I
    .param p2, "mask"    # J

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 900
    const-string v2, "absBaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setButtonLock() lockTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTouchLockMask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mTouchLockMask:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " check:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mTouchLockMask:J

    and-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    if-nez p1, :cond_48

    .line 904
    iget-wide v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mTouchLockMask:J

    const-wide/16 v4, -0x1

    xor-long/2addr v4, p2

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mTouchLockMask:J

    .line 925
    :cond_47
    :goto_47
    return v0

    .line 908
    :cond_48
    iget-wide v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mTouchLockMask:J

    and-long/2addr v2, p2

    cmp-long v2, v2, p2

    if-nez v2, :cond_50

    const/4 v0, 0x1

    .line 911
    .local v0, "isLocked":Z
    :cond_50
    if-eqz v0, :cond_65

    if-lez p1, :cond_65

    .line 913
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 914
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    int-to-long v4, p1

    invoke-virtual {v2, v1, v4, v5}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_47

    .line 917
    .end local v1    # "msg":Landroid/os/Message;
    :cond_65
    if-nez v0, :cond_47

    if-lez p1, :cond_47

    .line 919
    iget-wide v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mTouchLockMask:J

    or-long/2addr v2, p2

    iput-wide v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mTouchLockMask:J

    .line 921
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 922
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    int-to-long v4, p1

    invoke-virtual {v2, v1, v4, v5}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_47
.end method

.method protected setListHeaderView(Landroid/widget/ListView;)V
    .registers 12
    .param p1, "listview"    # Landroid/widget/ListView;

    .prologue
    const v8, 0x7f1000f3

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 937
    const-string v5, "setListHeaderView"

    invoke-static {v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 941
    const/4 v2, 0x1

    .line 946
    .local v2, "selectable":Z
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1011
    :cond_15
    :goto_15
    return-void

    .line 949
    :cond_16
    sget-object v5, Lcom/pantech/app/music/list/fragment/absBaseFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_fe

    .line 1009
    :goto_27
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    if-eqz v5, :cond_15

    .line 1010
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    invoke-virtual {p1, v5, v9, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_15

    .line 952
    :pswitch_31
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    if-nez v5, :cond_46

    .line 954
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030086

    invoke-virtual {v5, v6, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    .line 957
    :cond_46
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 958
    .local v1, "mainText":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    const v6, 0x7f1000f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 959
    .local v3, "subText":Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    const v5, 0x7f080096

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 963
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v7, ""

    new-instance v8, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v8}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v5, v6, v7, v8}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v4

    .line 965
    .local v4, "uboxPlaylistCount":I
    if-nez v4, :cond_7c

    .line 967
    const v5, 0x7f08008e

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_27

    .line 971
    :cond_7c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080061

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 976
    .end local v1    # "mainText":Landroid/widget/TextView;
    .end local v3    # "subText":Landroid/widget/TextView;
    .end local v4    # "uboxPlaylistCount":I
    :pswitch_9e
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    if-nez v5, :cond_b3

    .line 978
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030084

    invoke-virtual {v5, v6, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    .line 981
    :cond_b3
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 982
    .restart local v1    # "mainText":Landroid/widget/TextView;
    const v5, 0x7f080071

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_27

    .line 987
    .end local v1    # "mainText":Landroid/widget/TextView;
    :pswitch_c3
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->isLandscape()Z

    move-result v5

    if-nez v5, :cond_f5

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/pantech/app/music/list/activity/SubListActivity;

    if-eqz v5, :cond_f5

    .line 989
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/activity/SubListActivity;

    .line 990
    .local v0, "activity":Lcom/pantech/app/music/list/activity/SubListActivity;
    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getHeader()Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->getView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    .line 991
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v5, v6, :cond_f2

    .line 993
    const/4 v2, 0x1

    .line 994
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto/16 :goto_27

    .line 998
    :cond_f2
    const/4 v2, 0x0

    goto/16 :goto_27

    .line 1003
    .end local v0    # "activity":Lcom/pantech/app/music/list/activity/SubListActivity;
    :cond_f5
    iput-object v9, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    .line 1004
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto/16 :goto_27

    .line 949
    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_31
        :pswitch_9e
        :pswitch_c3
    .end packed-switch
.end method

.method public updateHintLayer(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x8

    .line 1015
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isNeedHintLayer()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1017
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1019
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1024
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getHintPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1043
    :goto_2d
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4a

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    if-eqz v2, :cond_4a

    .line 1045
    sget-object v2, Lcom/pantech/app/music/list/fragment/absBaseFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_b2

    .line 1064
    :cond_4a
    :goto_4a
    :pswitch_4a
    return-void

    .line 1028
    :cond_4b
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getHintPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1030
    .local v1, "visible":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHintLayer preference:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " itemCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1032
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v2

    if-gtz v2, :cond_88

    const/4 v0, 0x1

    .line 1033
    .local v0, "isEmpty":Z
    :cond_88
    if-eqz v0, :cond_90

    .line 1035
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2d

    .line 1039
    :cond_90
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintLayer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2d

    .line 1049
    .end local v0    # "isEmpty":Z
    .end local v1    # "visible":I
    :pswitch_96
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    const v3, 0x7f0800d4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4a

    .line 1055
    :pswitch_9f
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    const v3, 0x7f0800d5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4a

    .line 1059
    :pswitch_a8
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mHintText:Landroid/widget/TextView;

    const v3, 0x7f0800d6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4a

    .line 1045
    nop

    :pswitch_data_b2
    .packed-switch 0x2
        :pswitch_96
        :pswitch_4a
        :pswitch_96
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_a8
    .end packed-switch
.end method
