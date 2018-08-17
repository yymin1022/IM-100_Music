.class public Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayoutCustom.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/view/TabLayoutCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mScrollState:I

.field private mTabLayout:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/component/view/TabLayout;)V
    .registers 2
    .param p1, "tabLayout"    # Lcom/pantech/app/music/list/component/view/TabLayout;

    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabLayoutOnPageChangeListener;->mTabLayout:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .line 713
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 727
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabLayoutOnPageChangeListener;->mScrollState:I

    .line 728
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 717
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabLayoutOnPageChangeListener;->mTabLayout:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->setScrollPosition(IF)V

    .line 718
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 721
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabLayoutOnPageChangeListener;->mScrollState:I

    if-nez v0, :cond_d

    .line 722
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabLayoutOnPageChangeListener;->mTabLayout:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getTabAt(I)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->select()V

    .line 724
    :cond_d
    return-void
.end method
