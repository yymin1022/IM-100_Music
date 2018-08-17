.class public Lcom/pantech/app/music/list/adapter/helper/Indexbar;
.super Ljava/lang/Object;
.source "Indexbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;,
        Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;,
        Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;
    }
.end annotation


# static fields
.field static final INDEX_BAR_FONT_COLOR:I = -0x55000001

.field static final INDEX_SCROLLER_SHOW_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "VMusicIndexBar"


# instance fields
.field mAttachView:Landroid/widget/AbsListView;

.field mAutoHide:Z

.field mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mHideIndexbarRunnable:Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;

.field mIndexBarHeight:I

.field mIndexBarPaddingLeft:I

.field mIndexChangedListener:Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;

.field mIndexCharabersCount:I

.field mIndexCharacters:[C

.field mIndexCharactersWidth:[F

.field mIndexScollerSelectedTextPaint:Landroid/graphics/Paint;

.field mIndexScollerTextPaint:Landroid/graphics/Paint;

.field mIndexScrollerBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mIndexScrollerCharFontSize:I

.field mIndexScrollerCharSelectedFontSize:I

.field mIndexScrollerItemHeight:F

.field mIndexScrollerItemMinHeight:F

.field mIndexScrollerViewHeight:I

.field mIndexScrollerViewWidth:I

.field mIndexbarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mIsScrollerShown:Z

.field mIsTouched:Z

.field mMaxScrollHeight:I

.field mOverlayAdjustHeight:I

.field mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field mOverlayFastScrollTouchWidth:I

.field mOverlayHeight:I

.field mOverlayPaint:Landroid/graphics/Paint;

.field mOverlayTextSize:I

.field mOverlayWidth:I

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mPaintIndexBar:Landroid/graphics/Paint;

.field mPushedStartXPos:F

.field mPushedXPos:F

.field mPushedYPos:F

.field mResources:Landroid/content/res/Resources;

.field mScrollStep:I

.field mScrolledYPos:I

.field mScrollerBGPaddingBottom:I

.field mScrollerBGPaddingRight:I

.field mScrollerBGPaddingTop:I

.field mScrollerCharAreaPaddingBottom:I

.field mScrollerCharAreaPaddingLeft:I

.field mScrollerCharAreaPaddingTop:I

.field mScrollerCharAreaStartOffset:F

.field mScrollerRect:Landroid/graphics/Rect;

.field mScrollerSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;-><init>(Landroid/content/Context;Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoHide"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 32
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    .line 37
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexChangedListener:Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;

    .line 44
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    .line 45
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerSelectedTextPaint:Landroid/graphics/Paint;

    .line 47
    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    .line 48
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    .line 49
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharactersWidth:[F

    .line 59
    iput-boolean v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsScrollerShown:Z

    .line 89
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerRect:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPaintIndexBar:Landroid/graphics/Paint;

    .line 104
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexbarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayPaint:Landroid/graphics/Paint;

    .line 114
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;-><init>(Lcom/pantech/app/music/list/adapter/helper/Indexbar;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mHideIndexbarRunnable:Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;

    .line 158
    iput-boolean v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAutoHide:Z

    .line 167
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    .line 170
    iput-boolean p2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAutoHide:Z

    .line 173
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerCharFontSize:I

    .line 174
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerCharSelectedFontSize:I

    .line 176
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemMinHeight:F

    .line 178
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f02015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerViewWidth:I

    .line 183
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollStep:I

    .line 185
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerBGPaddingTop:I

    .line 186
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerBGPaddingBottom:I

    .line 187
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerBGPaddingRight:I

    .line 189
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerCharAreaPaddingTop:I

    .line 190
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerCharAreaPaddingBottom:I

    .line 191
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerCharAreaPaddingLeft:I

    .line 193
    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->getIndexScrollerPaint(Z)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    .line 194
    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->getIndexScrollerPaint(Z)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerSelectedTextPaint:Landroid/graphics/Paint;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerRect:Landroid/graphics/Rect;

    .line 199
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexBarPaddingLeft:I

    .line 200
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexBarHeight:I

    .line 202
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020390

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexbarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    invoke-direct {p0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->getIndexBarPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPaintIndexBar:Landroid/graphics/Paint;

    .line 210
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayAdjustHeight:I

    .line 212
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayFastScrollTouchWidth:I

    .line 214
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayWidth:I

    .line 215
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayHeight:I

    .line 216
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayTextSize:I

    .line 218
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayTextSize:I

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->getFastScrollIndexOverlayPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayPaint:Landroid/graphics/Paint;

    .line 221
    return-void
.end method

.method private getFastScrollIndexOverlayPaint(I)Landroid/graphics/Paint;
    .registers 4
    .param p1, "fontsize"    # I

    .prologue
    .line 910
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 911
    .local v0, "paint":Landroid/graphics/Paint;
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 912
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 913
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 914
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 915
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 917
    return-object v0
.end method

.method private getIndexBarPaint()Landroid/graphics/Paint;
    .registers 4

    .prologue
    .line 892
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 893
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 894
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 896
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 899
    return-object v0
.end method

.method private getIndexScrollerPaint(Z)Landroid/graphics/Paint;
    .registers 6
    .param p1, "selected"    # Z

    .prologue
    const/4 v3, 0x1

    .line 867
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 869
    .local v0, "paint":Landroid/graphics/Paint;
    if-eqz p1, :cond_23

    .line 871
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 872
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerCharSelectedFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 873
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 874
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 882
    :goto_22
    return-object v0

    .line 878
    :cond_23
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 879
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerCharFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_22
.end method

.method private startHideAni()V
    .registers 7

    .prologue
    .line 964
    iget-boolean v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAutoHide:Z

    if-eqz v1, :cond_15

    .line 966
    const/16 v0, 0x7d0

    .line 972
    .local v0, "delay":I
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mHideIndexbarRunnable:Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 973
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mHideIndexbarRunnable:Lcom/pantech/app/music/list/adapter/helper/Indexbar$HideIndexbar;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 975
    .end local v0    # "delay":I
    :cond_15
    return-void
.end method


# virtual methods
.method public awakenScrollBars()V
    .registers 3

    .prologue
    const/16 v1, 0xff

    .line 981
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 982
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsScrollerShown:Z

    .line 986
    invoke-direct {p0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->startHideAni()V

    .line 988
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 989
    return-void
.end method

.method public clearPosition()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedXPos:F

    .line 287
    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedYPos:F

    .line 288
    iput v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    .line 290
    iput v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mMaxScrollHeight:I

    .line 291
    return-void
.end method

.method protected debugBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexbarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 598
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 599
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexbarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 600
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 601
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 686
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 687
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 689
    .local v1, "touchAction":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->getStatus()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->isTouchDowned()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {p0, v4, v5, v6}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->isInScroller(III)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 691
    :cond_29
    packed-switch v1, :pswitch_data_ea

    .line 773
    iput-boolean v7, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsTouched:Z

    .line 775
    iput v10, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    .line 777
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    if-eqz v4, :cond_39

    .line 779
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->postInvalidate()V

    .line 788
    :cond_39
    sput-boolean v9, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mViewPagerScrollFix:Z

    .line 792
    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    .line 797
    :cond_3c
    if-nez v1, :cond_d1

    .line 799
    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedStartXPos:F

    .line 800
    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedXPos:F

    .line 801
    iput v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedYPos:F

    .line 820
    :goto_44
    return v0

    .line 694
    :pswitch_45
    iput-boolean v9, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsTouched:Z

    .line 702
    sput-boolean v7, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mViewPagerScrollFix:Z

    .line 704
    invoke-virtual {p0, v1, v3}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->isInScroller(IF)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->getIndexAtPosition(FF)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 706
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    if-eqz v4, :cond_3b

    .line 708
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->postInvalidate()V

    goto :goto_3b

    .line 714
    :pswitch_5f
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    iget v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedYPos:F

    sub-float v5, v3, v5

    float-to-int v5, v5

    iget v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollStep:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    .line 716
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    if-gez v4, :cond_72

    .line 717
    iput v7, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    .line 719
    :cond_72
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    iget v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mMaxScrollHeight:I

    if-le v4, v5, :cond_7c

    .line 721
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mMaxScrollHeight:I

    iput v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    .line 724
    :cond_7c
    invoke-virtual {p0, v1, v3}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->isInScroller(IF)Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->getIndexAtPosition(FF)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 729
    :cond_88
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    if-eqz v4, :cond_3b

    .line 731
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/widget/AbsListView;->postInvalidateDelayed(J)V

    goto :goto_3b

    .line 736
    :pswitch_94
    iput-boolean v7, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsTouched:Z

    .line 738
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    iget v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedYPos:F

    sub-float v5, v3, v5

    float-to-int v5, v5

    iget v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollStep:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    .line 740
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    if-gez v4, :cond_a9

    .line 741
    iput v7, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    .line 743
    :cond_a9
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    iget v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mMaxScrollHeight:I

    if-le v4, v5, :cond_b3

    .line 745
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mMaxScrollHeight:I

    iput v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    .line 748
    :cond_b3
    invoke-virtual {p0, v1, v3}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->isInScroller(IF)Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->getIndexAtPosition(FF)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 753
    :cond_bf
    iput v10, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    .line 755
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    if-eqz v4, :cond_ca

    .line 757
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->postInvalidate()V

    .line 760
    :cond_ca
    invoke-direct {p0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->startHideAni()V

    .line 768
    sput-boolean v9, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->mViewPagerScrollFix:Z

    goto/16 :goto_3b

    .line 803
    :cond_d1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_da

    .line 805
    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedXPos:F

    .line 806
    iput v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedYPos:F

    goto/16 :goto_44

    .line 808
    :cond_da
    if-ne v1, v9, :cond_e4

    .line 810
    iput v8, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedStartXPos:F

    .line 811
    iput v8, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedXPos:F

    .line 812
    iput v8, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedYPos:F

    goto/16 :goto_44

    .line 816
    :cond_e4
    iput v8, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedXPos:F

    .line 817
    iput v8, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedYPos:F

    goto/16 :goto_44

    .line 691
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_45
        :pswitch_94
        :pswitch_5f
    .end packed-switch
.end method

.method public drawCurrentIndexBar(Landroid/graphics/Canvas;Landroid/graphics/Rect;CI)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "ch"    # C
    .param p4, "iSeparatorTop"    # I

    .prologue
    .line 304
    if-lez p4, :cond_5e

    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexBarHeight:I

    if-ge p4, v0, :cond_5e

    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexBarHeight:I

    sub-int v7, p4, v0

    .line 306
    .local v7, "iTop":I
    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 309
    const/4 v0, 0x2

    new-array v1, v0, [C

    const/4 v0, 0x0

    aput-char p3, v1, v0

    const/4 v0, 0x1

    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 311
    .local v1, "szStr":[C
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 312
    .local v9, "textBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPaintIndexBar:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 314
    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexBarHeight:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v10, v0, 0x2

    .line 316
    .local v10, "textTopPadding":I
    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    add-int v8, v0, v7

    .line 318
    .local v8, "iY":I
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexbarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexBarHeight:I

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexbarBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 324
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexBarPaddingLeft:I

    int-to-float v4, v0

    int-to-float v5, v8

    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPaintIndexBar:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 327
    return-void

    .line 304
    .end local v1    # "szStr":[C
    .end local v7    # "iTop":I
    .end local v8    # "iY":I
    .end local v9    # "textBounds":Landroid/graphics/Rect;
    .end local v10    # "textTopPadding":I
    :cond_5e
    const/4 v7, 0x0

    goto :goto_a
.end method

.method public drawFastscrollOverlayPopup(Landroid/graphics/Canvas;Landroid/graphics/Rect;IC)V
    .registers 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollRect"    # Landroid/graphics/Rect;
    .param p3, "fastScrollWitdh"    # I
    .param p4, "indexChar"    # C

    .prologue
    .line 383
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 391
    .local v6, "indexOverlayGuideRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedYPos:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_e4

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    int-to-double v10, v9

    move/from16 v0, p3

    int-to-double v12, v0

    const-wide v14, 0x4006666666666666L    # 2.8

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedStartXPos:F

    float-to-double v12, v9

    cmpg-double v9, v10, v12

    if-gez v9, :cond_e4

    .line 393
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 420
    .local v7, "indexOverlayRect":Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v5, v9

    .line 421
    .local v5, "halfWidth":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v4, v9

    .line 423
    .local v4, "halfOverlayWidth":F
    sub-float v9, v5, v4

    iput v9, v7, Landroid/graphics/RectF;->left:F

    .line 424
    add-float v9, v5, v4

    iput v9, v7, Landroid/graphics/RectF;->right:F

    .line 426
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v2, v9

    .line 427
    .local v2, "halfHeight":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayHeight:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v3, v9

    .line 429
    .local v3, "halfOverlayHeight":F
    sub-float v9, v2, v3

    iput v9, v7, Landroid/graphics/RectF;->top:F

    .line 430
    add-float v9, v2, v3

    iput v9, v7, Landroid/graphics/RectF;->bottom:F

    .line 433
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_7b

    .line 435
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, v7, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v7, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v7, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v13, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 440
    :cond_7b
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 441
    .local v8, "textBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayPaint:Landroid/graphics/Paint;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 449
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    move-object/from16 v0, p0

    iget v11, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iget v11, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 454
    .end local v2    # "halfHeight":F
    .end local v3    # "halfOverlayHeight":F
    .end local v4    # "halfOverlayWidth":F
    .end local v5    # "halfWidth":F
    .end local v7    # "indexOverlayRect":Landroid/graphics/RectF;
    .end local v8    # "textBounds":Landroid/graphics/Rect;
    :cond_e4
    return-void
.end method

.method public drawHelper(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "overlayPopup"    # Z

    .prologue
    .line 339
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 341
    .local v1, "indexScrollerRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 344
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerBGPaddingTop:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 345
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerBGPaddingBottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 347
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerBGPaddingRight:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 348
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerViewWidth:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 350
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 355
    invoke-virtual {p0, p1, v1}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->drawIndexScroller(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 360
    if-eqz p3, :cond_39

    .line 364
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 368
    .local v0, "indexOverlayGuideRect":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->drawScrollerOverlayPopup(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 370
    .end local v0    # "indexOverlayGuideRect":Landroid/graphics/Rect;
    :cond_39
    return-void
.end method

.method public drawIndexScroller(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollerRect"    # Landroid/graphics/Rect;

    .prologue
    .line 533
    iget-boolean v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsScrollerShown:Z

    if-eqz v2, :cond_62

    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    if-lez v2, :cond_62

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->drawIndexScrollerBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 541
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerCharAreaPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerCharAreaPaddingBottom:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 546
    .local v0, "charAreaRect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 550
    .local v1, "rectHeight":I
    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    div-int v2, v1, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    .line 551
    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    iget v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemMinHeight:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    .line 554
    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerViewHeight:I

    .line 558
    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerViewHeight:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mMaxScrollHeight:I

    .line 559
    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mMaxScrollHeight:I

    if-gez v2, :cond_4f

    .line 561
    const/4 v2, 0x0

    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mMaxScrollHeight:I

    .line 565
    :cond_4f
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 569
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 573
    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->drawIndexScrollerCharacters(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 575
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 577
    .end local v0    # "charAreaRect":Landroid/graphics/Rect;
    .end local v1    # "rectHeight":I
    :cond_62
    return-void
.end method

.method protected drawIndexScrollerBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 590
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 591
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 592
    return-void
.end method

.method protected drawIndexScrollerCharacters(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "iScrollY"    # I

    .prologue
    .line 613
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 614
    .local v13, "textBound":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 616
    .local v11, "selectedTextBound":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v1

    move/from16 v16, v0

    .line 617
    .local v16, "x":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v12, v1

    .line 618
    .local v12, "startY":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    .line 619
    .local v8, "endY":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v15, v1

    .line 621
    .local v15, "width":F
    const/4 v3, 0x0

    .line 628
    .local v3, "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    aget-char v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v2, v4, v7, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerSelectedTextPaint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    aget-char v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v2, v4, v7, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 631
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerCharAreaStartOffset:F

    .line 636
    const v9, 0x3f666666    # 0.9f

    .line 637
    .local v9, "factor":F
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 638
    .local v18, "yOffset":I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 640
    .local v17, "xOffset":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerCharAreaStartOffset:F

    add-float/2addr v1, v12

    move/from16 v0, p3

    int-to-float v2, v0

    sub-float v14, v1, v2

    .line 642
    .local v14, "textPosY":F
    const/4 v10, 0x0

    .line 643
    .local v10, "reposX":F
    const/4 v6, 0x0

    .line 645
    .local v6, "reposY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerCharFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f0134

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 648
    :goto_d5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    if-ge v3, v1, :cond_11d

    cmpg-float v1, v14, v8

    if-gez v1, :cond_11d

    .line 650
    move v6, v14

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharactersWidth:[F

    aget v10, v1, v3

    .line 654
    sub-float v1, v15, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v10, v16, v1

    .line 657
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    if-ne v3, v1, :cond_fb

    .line 659
    move/from16 v0, v18

    int-to-float v1, v0

    add-float/2addr v6, v1

    .line 660
    move/from16 v0, v17

    int-to-float v1, v0

    sub-float/2addr v10, v1

    .line 664
    :cond_fb
    move v5, v10

    .line 667
    .local v5, "adjustX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    if-ne v3, v1, :cond_118

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerSelectedTextPaint:Landroid/graphics/Paint;

    :goto_10b
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 669
    add-int/lit8 v3, v3, 0x1

    .line 672
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    add-float/2addr v14, v1

    .line 673
    goto :goto_d5

    .line 667
    :cond_118
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    goto :goto_10b

    .line 674
    .end local v5    # "adjustX":F
    :cond_11d
    return-void
.end method

.method drawScrollerOverlayPopup(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 465
    iget-boolean v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsScrollerShown:Z

    if-eqz v6, :cond_b0

    iget v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    if-ltz v6, :cond_b0

    .line 467
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 489
    .local v4, "indexOverlayRect":Landroid/graphics/RectF;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 490
    .local v3, "halfWidth":F
    iget v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 492
    .local v2, "halfOverlayWidth":F
    sub-float v6, v3, v2

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 493
    add-float v6, v3, v2

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 495
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    .line 496
    .local v0, "halfHeight":F
    iget v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 498
    .local v1, "halfOverlayHeight":F
    sub-float v6, v0, v1

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 499
    add-float v6, v0, v1

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 502
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_51

    .line 504
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, v4, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 505
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 509
    :cond_51
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 510
    .local v5, "textBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayPaint:Landroid/graphics/Paint;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    iget v9, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    iget v8, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v11

    add-float/2addr v7, v8

    iget v8, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 523
    .end local v0    # "halfHeight":F
    .end local v1    # "halfOverlayHeight":F
    .end local v2    # "halfOverlayWidth":F
    .end local v3    # "halfWidth":F
    .end local v4    # "indexOverlayRect":Landroid/graphics/RectF;
    .end local v5    # "textBounds":Landroid/graphics/Rect;
    :cond_b0
    return-void
.end method

.method protected getIndexAtPosition(FF)Z
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 833
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerCharAreaPaddingTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerCharAreaStartOffset:F

    sub-float v1, v4, v5

    .line 834
    .local v1, "fReCalY":F
    const/4 v2, -0x1

    .line 835
    .local v2, "iFindIndex":I
    const/4 v0, 0x0

    .line 836
    .local v0, "bChanged":Z
    iget v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    .line 838
    .local v3, "iLength":I
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    div-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 842
    if-ltz v2, :cond_3a

    if-ge v2, v3, :cond_3a

    .line 844
    iget v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    if-eq v4, v2, :cond_3a

    .line 846
    iput v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    .line 847
    const/4 v0, 0x1

    .line 849
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexChangedListener:Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;

    if-eqz v4, :cond_3a

    .line 851
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexChangedListener:Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    aget-char v6, v6, v2

    const/4 v7, 0x0

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;->onIndexChanged(Landroid/widget/AbsListView;ICLjava/lang/Object;)Z

    .line 856
    :cond_3a
    return v0
.end method

.method getStatus()Z
    .registers 2

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsScrollerShown:Z

    return v0
.end method

.method public hideScrollBars()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 995
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 996
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 998
    iput-boolean v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsScrollerShown:Z

    .line 1000
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1001
    return-void
.end method

.method public isInScroller(IF)Z
    .registers 5
    .param p1, "iMotionEventAction"    # I
    .param p2, "y"    # F

    .prologue
    .line 942
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    float-to-int v1, p2

    if-ge v0, v1, :cond_10

    float-to-int v0, p2

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isInScroller(III)Z
    .registers 5
    .param p1, "iMotionEventAction"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 954
    if-nez p1, :cond_9

    .line 955
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 957
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isTouchDowned()Z
    .registers 2

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsTouched:Z

    return v0
.end method

.method public makeIndex([C)Z
    .registers 8
    .param p1, "cIndexCharacters"    # [C

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 230
    if-eqz p1, :cond_44

    .line 232
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerCharFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    array-length v1, p1

    iput v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    .line 235
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    .line 236
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharactersWidth:[F

    .line 239
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    iget v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharactersWidth:[F

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 241
    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerViewHeight:I

    .line 243
    iput v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedXPos:F

    .line 244
    iput v5, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPushedYPos:F

    .line 245
    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrolledYPos:I

    .line 247
    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mMaxScrollHeight:I

    .line 249
    iput-boolean v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIsTouched:Z

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    .line 253
    const/4 v0, 0x1

    .line 256
    :cond_44
    return v0
.end method

.method public rebuildIndex([C)V
    .registers 7
    .param p1, "cIndexCharacters"    # [C

    .prologue
    const/4 v4, 0x0

    .line 266
    if-eqz p1, :cond_3b

    .line 268
    array-length v0, p1

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    .line 269
    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    .line 270
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharactersWidth:[F

    .line 273
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScollerTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharacters:[C

    iget v2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharactersWidth:[F

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 275
    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerItemHeight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexScrollerViewHeight:I

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mScrollerSelectedIndex:I

    .line 279
    iget v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexCharabersCount:I

    if-lez v0, :cond_3b

    iget-boolean v0, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAutoHide:Z

    if-nez v0, :cond_3b

    .line 280
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->awakenScrollBars()V

    .line 282
    :cond_3b
    return-void
.end method

.method public setAttachView(Landroid/widget/AbsListView;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 3
    .param p1, "v"    # Landroid/widget/AbsListView;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mAttachView:Landroid/widget/AbsListView;

    .line 679
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 680
    return-void
.end method

.method public setIndexedChangeListener(Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->mIndexChangedListener:Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;

    .line 923
    return-void
.end method
