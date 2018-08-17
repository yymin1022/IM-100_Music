.class Lcom/pantech/app/music/library/ListFragment$10;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment;->setHeaderViewWithColor(JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment;)V
    .registers 2

    .prologue
    .line 893
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$10;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 7
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 898
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment$10;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_10

    .line 899
    const-string v3, "ListFragment"

    const-string v4, "RETURN getActivity() = null"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_f
    :goto_f
    return-void

    .line 904
    :cond_10
    iget-object v3, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    const v4, 0x7f1000a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 905
    .local v0, "albumArtView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 906
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 910
    :cond_2a
    iget-object v3, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    const v4, 0x7f1000a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 911
    .local v2, "ctLayout":Landroid/support/design/widget/CollapsingToolbarLayout;
    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getColorful()Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 912
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getColorful()Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v1

    .line 915
    .local v1, "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getOpaqueSubcolor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrimColor(I)V

    .line 916
    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getOpaqueSubcolor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setBackgroundColor(I)V

    .line 917
    new-instance v3, Lcom/pantech/app/music/library/ListFragment$10$1;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/library/ListFragment$10$1;-><init>(Lcom/pantech/app/music/library/ListFragment$10;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_f
.end method
