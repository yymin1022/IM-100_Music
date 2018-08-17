.class Lcom/pantech/app/music/list/component/view/TabLayoutCustom$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "TabLayoutCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->createOnPageChangeListener()Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)V
    .registers 2

    .prologue
    .line 274
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$1;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$1;->mScrollState:I

    .line 290
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$1;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->setScrollPosition(IF)V

    .line 280
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 283
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$1;->mScrollState:I

    if-nez v0, :cond_d

    .line 284
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$1;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getTabAt(I)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->select()V

    .line 286
    :cond_d
    return-void
.end method
