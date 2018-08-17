.class public Lcom/pantech/app/music/library/ListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ListAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field albumArtParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

.field iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

.field mAlbumArt:Landroid/widget/ImageView;

.field mCheckBox:Landroid/widget/CheckBox;

.field mCheckImage:Landroid/widget/ImageView;

.field mDividerButton:Landroid/widget/Button;

.field mInfoBackground:Landroid/view/View;

.field mInfoHole:Landroid/view/View;

.field mMainLayout:Landroid/view/View;

.field mMainText:Landroid/widget/TextView;

.field mPlayingIcon:Landroid/widget/ImageView;

.field mReArrangeIcon:Landroid/widget/ImageView;

.field mRemoveIcon:Landroid/widget/ImageView;

.field mSelectedView:Landroid/view/View;

.field mSubText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pantech/app/music/library/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/library/ListAdapter;Landroid/view/View;Lcom/pantech/app/music/library/IListHolderHelper$ViewType;)V
    .registers 6
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    .line 591
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 593
    iput-object p2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mMainLayout:Landroid/view/View;

    .line 594
    const v0, 0x7f1000f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    .line 595
    const v0, 0x7f1000ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mCheckImage:Landroid/widget/ImageView;

    .line 596
    const v0, 0x7f100100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mInfoBackground:Landroid/view/View;

    .line 597
    const v0, 0x7f1000f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    .line 598
    const v0, 0x7f100101

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    .line 599
    const v0, 0x7f1000fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mReArrangeIcon:Landroid/widget/ImageView;

    .line 600
    const v0, 0x7f1000f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 601
    const v0, 0x7f100102

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mPlayingIcon:Landroid/widget/ImageView;

    .line 602
    const v0, 0x7f1000fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mInfoHole:Landroid/view/View;

    .line 603
    const v0, 0x7f100103

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mRemoveIcon:Landroid/widget/ImageView;

    .line 604
    const v0, 0x7f1000fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mDividerButton:Landroid/widget/Button;

    .line 606
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_10a

    .line 607
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSelectedView:Landroid/view/View;

    .line 612
    :cond_84
    :goto_84
    invoke-static {p1}, Lcom/pantech/app/music/library/ListAdapter;->access$000(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/library/FragmentInfo;->createHolderHelper(Landroid/view/View;)Lcom/pantech/app/music/library/IListHolderHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    .line 615
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    if-ne p3, v0, :cond_9a

    .line 616
    new-instance v0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$1;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;Lcom/pantech/app/music/library/ListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    :cond_9a
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b0

    .line 626
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$2;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;Lcom/pantech/app/music/library/ListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 632
    invoke-static {p1}, Lcom/pantech/app/music/library/ListAdapter;->access$300(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/ActionModeInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/ActionModeInfo;->setActivated(Z)V

    .line 636
    :cond_b0
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mReArrangeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_be

    .line 637
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mReArrangeIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$3;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;Lcom/pantech/app/music/library/ListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 650
    :cond_be
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mRemoveIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_cc

    .line 651
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mRemoveIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$4;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$4;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;Lcom/pantech/app/music/library/ListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    :cond_cc
    invoke-static {p1}, Lcom/pantech/app/music/library/ListAdapter;->access$000(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 663
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    if-ne p3, v0, :cond_e3

    .line 664
    new-instance v0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$5;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$5;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;Lcom/pantech/app/music/library/ListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 673
    :cond_e3
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    if-eqz v0, :cond_fb

    .line 674
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    new-instance v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$6;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$6;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;Lcom/pantech/app/music/library/ListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    new-instance v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$7;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$7;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;Lcom/pantech/app/music/library/ListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 695
    :cond_fb
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mDividerButton:Landroid/widget/Button;

    if-eqz v0, :cond_109

    .line 696
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mDividerButton:Landroid/widget/Button;

    new-instance v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$8;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$8;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;Lcom/pantech/app/music/library/ListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    :cond_109
    return-void

    .line 608
    :cond_10a
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mCheckImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_84

    .line 609
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mCheckImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSelectedView:Landroid/view/View;

    goto/16 :goto_84
.end method

.method static synthetic access$200(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;ZLandroid/view/View;Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListAdapter$ViewHolder;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    .prologue
    .line 573
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->checkMyItem(ZLandroid/view/View;Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->toggleChecked()V

    return-void
.end method

.method private checkMyItem(ZLandroid/view/View;Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;)V
    .registers 7
    .param p1, "checked"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    .prologue
    const/4 v2, 0x0

    .line 855
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$300(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/ActionModeInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/pantech/app/music/library/ActionModeInfo;->checkItem(IZ)V

    .line 858
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 860
    if-eqz p2, :cond_21

    .line 861
    instance-of v0, p2, Landroid/widget/CheckBox;

    if-eqz v0, :cond_3b

    .line 862
    if-eqz p1, :cond_35

    .line 863
    check-cast p2, Landroid/widget/CheckBox;

    .end local p2    # "view":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 875
    :cond_21
    :goto_21
    if-eqz p3, :cond_34

    .line 876
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v1}, Lcom/pantech/app/music/library/ListAdapter;->access$300(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/ActionModeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ActionModeInfo;->getSelectedCount()I

    move-result v1

    invoke-interface {p3, v0, p1, v1}, Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;->onItemChecked(IZI)V

    .line 878
    :cond_34
    return-void

    .line 865
    .restart local p2    # "view":Landroid/view/View;
    :cond_35
    check-cast p2, Landroid/widget/CheckBox;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_21

    .line 867
    .restart local p2    # "view":Landroid/view/View;
    :cond_3b
    if-eqz p1, :cond_41

    .line 868
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    .line 870
    :cond_41
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21
.end method

.method private setAlbumArtWithColor(J)V
    .registers 8
    .param p1, "albumID"    # J

    .prologue
    .line 921
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_7

    .line 961
    :cond_6
    :goto_6
    return-void

    .line 924
    :cond_7
    new-instance v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->albumArtParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .line 925
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->albumArtParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    iput-wide p1, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 926
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->albumArtParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->itemView:Landroid/view/View;

    iput-object v3, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    .line 927
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mInfoBackground:Landroid/view/View;

    if-eqz v2, :cond_22

    .line 928
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->albumArtParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    sget v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    iput v3, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 931
    :cond_22
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v2}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v1

    .line 932
    .local v1, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->albumArtParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    new-instance v3, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;

    invoke-direct {v3, p0, p1, p2}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;J)V

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 958
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_6

    .line 959
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    const v3, 0x7f020055

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6
.end method

.method private setTextWithColor(J)V
    .registers 10
    .param p1, "albumID"    # J

    .prologue
    const/4 v5, 0x0

    .line 881
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v2}, Lcom/pantech/app/music/library/ListAdapter;->access$000(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 918
    :cond_f
    :goto_f
    return-void

    .line 883
    :cond_10
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_f

    .line 885
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    if-eqz v2, :cond_f

    .line 888
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mPlayingIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_57

    .line 889
    :cond_26
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v3}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f01fb

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 890
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v2, :cond_f

    .line 891
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v3}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f01fc

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    .line 895
    :cond_57
    new-instance v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 896
    .local v1, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    iput-wide p1, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 897
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->itemView:Landroid/view/View;

    iput-object v2, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    .line 898
    sget v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    iput v2, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 900
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v2}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v0

    .line 901
    .local v0, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v2, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;-><init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;J)V

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    goto :goto_f
.end method

.method private toggleChecked()V
    .registers 4

    .prologue
    .line 847
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$300(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/ActionModeInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/ActionModeInfo;->isChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 848
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSelectedView:Landroid/view/View;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v2}, Lcom/pantech/app/music/library/ListAdapter;->access$100(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->checkMyItem(ZLandroid/view/View;Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;)V

    .line 851
    :goto_1c
    return-void

    .line 850
    :cond_1d
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSelectedView:Landroid/view/View;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v2}, Lcom/pantech/app/music/library/ListAdapter;->access$100(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->checkMyItem(ZLandroid/view/View;Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;)V

    goto :goto_1c
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    .line 766
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v1}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v0

    .line 767
    .local v0, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->albumArtParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->removeAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V

    .line 768
    return-void
.end method

.method clickProcess()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$300(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/ActionModeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ActionModeInfo;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 707
    invoke-direct {p0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->toggleChecked()V

    .line 763
    :goto_10
    return-void

    .line 709
    :cond_11
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListHolderHelper;->getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8a

    goto :goto_10

    .line 737
    :pswitch_23
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListHolderHelper;->getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/library/ListAdapter;->moveToDetailList(Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V

    goto :goto_10

    .line 740
    :pswitch_2f
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListHolderHelper;->getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/library/ListAdapter;->moveToDetailList(Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V

    goto :goto_10

    .line 743
    :pswitch_3b
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/ListAdapter;->playTotalList(I)V

    goto :goto_10

    .line 746
    :pswitch_45
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/ListAdapter;->playOnlyTrack(I)V

    goto :goto_10

    .line 749
    :pswitch_4f
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/music/common/MusicUtils;->setQueuePosition(I)V

    goto :goto_10

    .line 755
    :pswitch_57
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080140

    invoke-static {v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 756
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v1}, Lcom/pantech/app/music/library/ListAdapter;->access$000(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v2

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListHolderHelper;->getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->getID()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/pantech/app/music/library/ListAdapter;->playArtistAlbumTrack(JJ)V

    goto :goto_10

    .line 759
    :pswitch_7d
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListHolderHelper;->getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/ListAdapter;->sendSelectedItem(Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;)V

    goto :goto_10

    .line 709
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
        :pswitch_45
        :pswitch_4f
        :pswitch_57
        :pswitch_7d
    .end packed-switch
.end method

.method public onItemClear()V
    .registers 3

    .prologue
    .line 970
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 971
    return-void
.end method

.method public onItemSelected()V
    .registers 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 966
    return-void
.end method

.method public updateCheckInfo()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 822
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$300(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/ActionModeInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/ActionModeInfo;->isChecked(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 823
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSelectedView:Landroid/view/View;

    invoke-direct {p0, v3, v0, v4}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->checkMyItem(ZLandroid/view/View;Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;)V

    .line 828
    :goto_18
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mReArrangeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3b

    .line 829
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$000(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 830
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$300(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/ActionModeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ActionModeInfo;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 831
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mReArrangeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mDividerButton:Landroid/widget/Button;

    if-eqz v0, :cond_50

    .line 839
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v0}, Lcom/pantech/app/music/library/ListAdapter;->access$300(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/ActionModeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ActionModeInfo;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 840
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mDividerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 844
    :cond_50
    :goto_50
    return-void

    .line 825
    :cond_51
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSelectedView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v4}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->checkMyItem(ZLandroid/view/View;Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;)V

    goto :goto_18

    .line 833
    :cond_57
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mReArrangeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3b

    .line 842
    :cond_5d
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mDividerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_50
.end method

.method public updateColorInfo()V
    .registers 9

    .prologue
    .line 807
    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    invoke-interface {v3}, Lcom/pantech/app/music/library/IListHolderHelper;->getAlbumID()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->setAlbumArtWithColor(J)V

    .line 809
    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v3}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/service/MusicCache;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/service/MusicCache;

    move-result-object v0

    .line 810
    .local v0, "musicCache":Lcom/pantech/app/music/service/MusicCache;
    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicCache;->getMusicItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 811
    .local v1, "musicItemInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->setTextWithColor(J)V

    .line 814
    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v3}, Lcom/pantech/app/music/library/ListAdapter;->access$700(Lcom/pantech/app/music/library/ListAdapter;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 815
    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v4}, Lcom/pantech/app/music/library/ListAdapter;->access$700(Lcom/pantech/app/music/library/ListAdapter;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v5}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060016

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->setSpanSearchKeywords(Ljava/lang/String;[Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    .end local v2    # "title":Ljava/lang/String;
    :cond_52
    return-void
.end method

.method public updateWithArray(ILjava/util/ArrayList;)V
    .registers 6
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;>;"
    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 790
    :cond_8
    :goto_8
    return-void

    .line 787
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    if-eqz v0, :cond_8

    .line 788
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v1}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/library/IListHolderHelper;->updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public updateWithCursor(ILandroid/database/Cursor;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 771
    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 772
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :cond_e
    :goto_e
    return-void

    .line 775
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    if-eqz v0, :cond_e

    .line 779
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v1}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/pantech/app/music/library/IListHolderHelper;->updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public updateWithMusicItem(I[Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "musicList"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 793
    if-eqz p2, :cond_5

    array-length v0, p2

    if-lt p1, v0, :cond_c

    .line 794
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 803
    :cond_b
    :goto_b
    return-void

    .line 797
    :cond_c
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    if-eqz v0, :cond_b

    .line 801
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->iListHolderHelper:Lcom/pantech/app/music/library/IListHolderHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/library/ListAdapter;

    invoke-static {v1}, Lcom/pantech/app/music/library/ListAdapter;->access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;

    move-result-object v1

    aget-object v2, p2, p1

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/library/IListHolderHelper;->updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_b
.end method
