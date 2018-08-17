.class public final Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
.super Ljava/lang/Object;
.source "TabLayoutCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/view/TabLayoutCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)V
    .registers 3
    .param p1, "parent"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    .line 749
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .line 750
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    return-object v0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 810
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->selectTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V

    .line 874
    return-void
.end method

.method public setContentDescription(I)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 885
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 4
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 898
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    if-ltz v0, :cond_d

    .line 899
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$100(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)V

    .line 901
    :cond_d
    return-object p0
.end method

.method public setCustomView(I)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 4
    .param p1, "layoutResId"    # I

    .prologue
    .line 792
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setCustomView(Landroid/view/View;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mCustomView:Landroid/view/View;

    .line 779
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    if-ltz v0, :cond_d

    .line 780
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$100(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)V

    .line 782
    :cond_d
    return-object p0
.end method

.method public setIcon(I)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 843
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 831
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    if-ltz v0, :cond_d

    .line 832
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$100(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)V

    .line 834
    :cond_d
    return-object p0
.end method

.method setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 813
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    .line 814
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mTag:Ljava/lang/Object;

    .line 765
    return-object p0
.end method

.method public setText(I)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setText(Ljava/lang/CharSequence;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mText:Ljava/lang/CharSequence;

    .line 854
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    if-ltz v0, :cond_d

    .line 855
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mParent:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->mPosition:I

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$100(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)V

    .line 857
    :cond_d
    return-object p0
.end method
