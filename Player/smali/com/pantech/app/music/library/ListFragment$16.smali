.class Lcom/pantech/app/music/library/ListFragment$16;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListFragment;
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
    .line 1575
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .registers 9
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    const-wide/16 v4, 0x64

    const/4 v3, 0x1

    .line 1579
    if-nez p2, :cond_34

    .line 1580
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mCurAppBarState:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    sget-object v2, Lcom/pantech/app/music/library/ListFragment$AppBarState;->EXPANDED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    if-eq v1, v2, :cond_2d

    .line 1583
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v1, :cond_2d

    .line 1584
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1585
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1586
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1587
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1590
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_2d
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    sget-object v2, Lcom/pantech/app/music/library/ListFragment$AppBarState;->EXPANDED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    iput-object v2, v1, Lcom/pantech/app/music/library/ListFragment;->mCurAppBarState:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    .line 1607
    :goto_33
    return-void

    .line 1591
    :cond_34
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_45

    .line 1592
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    sget-object v2, Lcom/pantech/app/music/library/ListFragment$AppBarState;->COLLAPSED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    iput-object v2, v1, Lcom/pantech/app/music/library/ListFragment;->mCurAppBarState:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    goto :goto_33

    .line 1595
    :cond_45
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mCurAppBarState:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    sget-object v2, Lcom/pantech/app/music/library/ListFragment$AppBarState;->IDLE:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    if-eq v1, v2, :cond_6d

    .line 1598
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v1, :cond_6d

    .line 1599
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1600
    .restart local v0    # "ani":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1601
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1602
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1605
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_6d
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$16;->this$0:Lcom/pantech/app/music/library/ListFragment;

    sget-object v2, Lcom/pantech/app/music/library/ListFragment$AppBarState;->IDLE:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    iput-object v2, v1, Lcom/pantech/app/music/library/ListFragment;->mCurAppBarState:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    goto :goto_33
.end method
