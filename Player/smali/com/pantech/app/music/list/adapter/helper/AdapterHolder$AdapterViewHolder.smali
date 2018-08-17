.class public Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
.super Ljava/lang/Object;
.source "AdapterHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/helper/AdapterHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field public mArrangeNob:Landroid/widget/ImageView;

.field public mArtistMainIcon:Landroid/view/View;

.field public mArtistMainIconChecked:Landroid/widget/ImageView;

.field public mArtistMainIconLayer:Landroid/widget/FrameLayout;

.field public mBindViewType:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public mCheckable:Lcom/pantech/app/music/list/component/view/IMusicCheckable;

.field public mExpand:Landroid/widget/ImageView;

.field public mExpandLayer:Landroid/view/View;

.field public mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

.field public mMainText:Landroid/widget/TextView;

.field public mMultiAlbumarts:Landroid/widget/ImageView;

.field public mNewAddedIcon:Landroid/widget/ImageView;

.field public mNowplayingTextLayout:Landroid/widget/LinearLayout;

.field public mPlayingIcon:Lcom/pantech/app/music/list/component/view/AnimImageView;

.field public mSubText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
