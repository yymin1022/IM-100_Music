.class Lcom/pantech/app/music/library/activity/ListTabActivity$2;
.super Ljava/lang/Object;
.source "ListTabActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ListTabActivity;->attachFragment(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPageChanged:Z

.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ListTabActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ListTabActivity;)V
    .registers 3

    .prologue
    .line 240
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ListTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListTabActivity$2;->mPageChanged:Z

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 258
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 245
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 249
    const-string v1, "ListTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageSelected():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity$2;->mPageChanged:Z

    .line 251
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ListTabActivity;

    iget-object v1, v1, Lcom/pantech/app/music/library/activity/ListTabActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getItemInfo(I)Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v0

    .line 252
    .local v0, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ListTabActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/activity/ListTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/pantech/app/music/utils/PreferenceUtils;->saveCurrentTab(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo$Category;)V

    .line 253
    return-void
.end method
