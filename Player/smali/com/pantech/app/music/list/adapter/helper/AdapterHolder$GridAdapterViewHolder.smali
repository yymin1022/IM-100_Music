.class public Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;
.super Ljava/lang/Object;
.source "AdapterHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/helper/AdapterHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridAdapterViewHolder"
.end annotation


# instance fields
.field public mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public mCheckButton:Lcom/pantech/app/music/list/component/view/CheckableImageView;

.field public mCheckable:Lcom/pantech/app/music/list/component/view/IMusicCheckable;

.field public mCursorPosition:I

.field public mGroupID:J

.field public mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

.field public mMainText:Landroid/widget/TextView;

.field public mMultiAlbumarts:Landroid/widget/ImageView;

.field public mRootView:Landroid/view/View;

.field public mSelectTargetView:Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

.field public mSubText:Landroid/widget/TextView;

.field public mTextLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
