.class public Lcom/pantech/app/music/library/helper/ActionMenuHelper;
.super Ljava/lang/Object;
.source "ActionMenuHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x190

.field public static final OPTION_FIXED_ITEM_CHECKED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActionMenuHelper"


# instance fields
.field mActionMenuID:I

.field mActivity:Landroid/app/Activity;

.field mAddButton:Landroid/widget/Button;

.field mCallback:Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

.field mCancelButton:Landroid/widget/Button;

.field mCartButton:Landroid/widget/Button;

.field mDeleteButton:Landroid/widget/Button;

.field mMainView:Landroid/view/View;

.field mMenuButton:Landroid/widget/ImageButton;

.field mPlayButton:Landroid/widget/Button;

.field mPopupMenu:Landroid/widget/PopupMenu;

.field mRemoveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;ILcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "actionMenuID"    # I
    .param p4, "callback"    # Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

    .prologue
    const v6, 0x7f1001f4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    .line 48
    iput p3, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mActionMenuID:I

    .line 49
    iput-object p4, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCallback:Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

    .line 51
    const v2, 0x7f1000c6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMenuButton:Landroid/widget/ImageButton;

    .line 52
    const v2, 0x7f1000c0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPlayButton:Landroid/widget/Button;

    .line 53
    const v2, 0x7f1000c1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCartButton:Landroid/widget/Button;

    .line 54
    const v2, 0x7f1000c2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mDeleteButton:Landroid/widget/Button;

    .line 55
    const v2, 0x7f1000c3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mRemoveButton:Landroid/widget/Button;

    .line 56
    const v2, 0x7f1000c5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mAddButton:Landroid/widget/Button;

    .line 57
    const v2, 0x7f1000c4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCancelButton:Landroid/widget/Button;

    .line 59
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMenuButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/pantech/app/music/library/helper/ActionMenuHelper$1;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/library/helper/ActionMenuHelper$1;-><init>(Lcom/pantech/app/music/library/helper/ActionMenuHelper;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCartButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMenuButton:Landroid/widget/ImageButton;

    const v5, 0x800005

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 77
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/pantech/app/music/library/helper/ActionMenuHelper$2;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/library/helper/ActionMenuHelper$2;-><init>(Lcom/pantech/app/music/library/helper/ActionMenuHelper;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/pantech/app/music/library/helper/ActionMenuHelper$3;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/library/helper/ActionMenuHelper$3;-><init>(Lcom/pantech/app/music/library/helper/ActionMenuHelper;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 95
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 96
    .local v1, "menu":Landroid/view/Menu;
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 97
    .local v0, "inflater":Landroid/view/MenuInflater;
    iget v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mActionMenuID:I

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 100
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_c4

    .line 101
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    :cond_c4
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_d2

    .line 106
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMenuButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 108
    :cond_d2
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .registers 6
    .param p1, "withAni"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 127
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    if-nez v1, :cond_8

    .line 148
    :goto_7
    return-void

    .line 130
    :cond_8
    if-eqz p1, :cond_30

    .line 131
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 133
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 134
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 135
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    .line 138
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_30
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 232
    .local v0, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    .line 233
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPlayButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1e

    .line 234
    const v2, 0x7f1001eb

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 246
    :cond_12
    :goto_12
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCallback:Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1d

    .line 247
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCallback:Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

    invoke-interface {v2, v1}, Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;->onItemSelected(Landroid/view/MenuItem;)V

    .line 249
    :cond_1d
    return-void

    .line 235
    :cond_1e
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCartButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_2a

    .line 236
    const v2, 0x7f1001ec

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_12

    .line 237
    :cond_2a
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mDeleteButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_36

    .line 238
    const v2, 0x7f1001ed

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_12

    .line 239
    :cond_36
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mRemoveButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_42

    .line 240
    const v2, 0x7f1001f0

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_12

    .line 241
    :cond_42
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mAddButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_4e

    .line 242
    const v2, 0x7f1001f6

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_12

    .line 243
    :cond_4e
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_12

    .line 244
    const v2, 0x7f1001f5

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_12
.end method

.method public onPrepareMenu(II)V
    .registers 11
    .param p1, "selectedCount"    # I
    .param p2, "options"    # I

    .prologue
    const/4 v2, 0x1

    const v7, 0x7f1001f3

    const v6, 0x7f1001f0

    const v5, 0x7f1001ed

    const/4 v3, 0x0

    .line 151
    iget-object v4, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 152
    .local v1, "menu":Landroid/view/Menu;
    const v4, 0x7f1001eb

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 153
    const v4, 0x7f1001eb

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    iget-object v4, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    :cond_29
    const v4, 0x7f1001ec

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 157
    const v4, 0x7f1001ec

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    iget-object v4, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCartButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    :cond_41
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_53

    .line 161
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    iget-object v4, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    :cond_53
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 165
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    iget-object v4, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    :cond_65
    const v4, 0x7f1001f6

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 169
    const v4, 0x7f1001f6

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 170
    iget-object v4, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    :cond_7d
    const v4, 0x7f1001f5

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_95

    .line 173
    const v4, 0x7f1001f5

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    iget-object v4, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    :cond_95
    if-ne p1, v2, :cond_169

    move v0, v2

    .line 179
    .local v0, "enable":Z
    :goto_98
    const v4, 0x7f1001ef

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_ab

    .line 180
    const v4, 0x7f1001ef

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    :cond_ab
    const v4, 0x7f1001f1

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_be

    .line 183
    const v4, 0x7f1001f1

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    :cond_be
    const v4, 0x7f1001f2

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_d1

    .line 186
    const v4, 0x7f1001f2

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    :cond_d1
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_de

    .line 189
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    :cond_de
    if-eqz p1, :cond_16c

    move v0, v2

    .line 194
    :goto_e1
    const v2, 0x7f1001eb

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_ef

    .line 195
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    :cond_ef
    const v2, 0x7f1001ec

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_fd

    .line 198
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mCartButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    :cond_fd
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_108

    .line 201
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    :cond_108
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_113

    .line 204
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 206
    :cond_113
    const v2, 0x7f1001ee

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_126

    .line 207
    const v2, 0x7f1001ee

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    :cond_126
    const v2, 0x7f1001f6

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_134

    .line 210
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    :cond_134
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_141

    .line 213
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 216
    :cond_141
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_168

    .line 217
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_150

    .line 218
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    :cond_150
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_15b

    .line 221
    iget-object v2, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    :cond_15b
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_168

    .line 224
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 227
    :cond_168
    return-void

    .end local v0    # "enable":Z
    :cond_169
    move v0, v3

    .line 178
    goto/16 :goto_98

    .restart local v0    # "enable":Z
    :cond_16c
    move v0, v3

    .line 193
    goto/16 :goto_e1
.end method

.method public show(Z)V
    .registers 6
    .param p1, "withAni"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    if-nez v1, :cond_7

    .line 124
    :goto_6
    return-void

    .line 114
    :cond_7
    if-eqz p1, :cond_2a

    .line 115
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x43100000    # 144.0f

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 117
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 118
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 119
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    .line 122
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_2a
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method
