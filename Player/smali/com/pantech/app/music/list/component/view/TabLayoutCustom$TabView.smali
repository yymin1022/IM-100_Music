.class Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayoutCustom.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/view/TabLayoutCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private final mTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;Landroid/content/Context;Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V
    .registers 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .line 920
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 921
    iput-object p3, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .line 922
    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$200(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 923
    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$200(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 925
    :cond_18
    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$300(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v0

    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$400(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v1

    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$500(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v2

    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$600(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 927
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->setGravity(I)V

    .line 928
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->update()V

    .line 929
    return-void
.end method

.method private createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 7
    .param p1, "defaultColor"    # I
    .param p2, "selectedColor"    # I

    .prologue
    const/4 v3, 0x2

    .line 1063
    new-array v2, v3, [[I

    .line 1064
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 1065
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 1066
    .local v1, "i":I
    sget-object v3, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->SELECTED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1067
    aput p2, v0, v1

    .line 1068
    add-int/lit8 v1, v1, 0x1

    .line 1070
    sget-object v3, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1071
    aput p1, v0, v1

    .line 1072
    add-int/lit8 v1, v1, 0x1

    .line 1073
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method


# virtual methods
.method public getTab()Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 947
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 949
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 950
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 954
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 956
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 957
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1047
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 1048
    .local v3, "screenPos":[I
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getLocationOnScreen([I)V

    .line 1049
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1050
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getWidth()I

    move-result v5

    .line 1051
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getHeight()I

    move-result v2

    .line 1052
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1053
    .local v4, "screenWidth":I
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v7}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1054
    .local v0, "cheatSheet":Landroid/widget/Toast;
    if-eqz v0, :cond_3d

    .line 1056
    const/16 v6, 0x31

    aget v7, v3, v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1058
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1060
    :cond_3d
    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 960
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 961
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$700(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$700(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v1

    if-le v0, v1, :cond_27

    .line 963
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$700(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 970
    :cond_26
    :goto_26
    return-void

    .line 965
    :cond_27
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$800(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v0

    if-lez v0, :cond_26

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$800(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 967
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$800(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_26
.end method

.method public setSelected(Z)V
    .registers 4
    .param p1, "selected"    # Z

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_25

    const/4 v0, 0x1

    .line 933
    .local v0, "changed":Z
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 934
    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 935
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->sendAccessibilityEvent(I)V

    .line 936
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 937
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 939
    :cond_1b
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_24

    .line 940
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 943
    :cond_24
    return-void

    .line 932
    .end local v0    # "changed":Z
    :cond_25
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final update()V
    .registers 15

    .prologue
    const/16 v11, 0x8

    const/4 v13, -0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 972
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .line 973
    .local v6, "tab":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 974
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_37

    .line 975
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 976
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1d

    .line 977
    if-eqz v1, :cond_1a

    .line 978
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 980
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->addView(Landroid/view/View;)V

    .line 982
    :cond_1d
    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mCustomView:Landroid/view/View;

    .line 983
    iget-object v9, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_28

    .line 984
    iget-object v9, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 986
    :cond_28
    iget-object v9, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_36

    .line 987
    iget-object v9, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    iget-object v9, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    :cond_36
    :goto_36
    return-void

    .line 991
    :cond_37
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mCustomView:Landroid/view/View;

    if-eqz v10, :cond_42

    .line 992
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->removeView(Landroid/view/View;)V

    .line 993
    iput-object v12, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mCustomView:Landroid/view/View;

    .line 995
    :cond_42
    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 996
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 997
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_eb

    .line 998
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_6a

    .line 999
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1000
    .local v4, "iconView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1002
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1003
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    invoke-virtual {p0, v4, v9}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->addView(Landroid/view/View;I)V

    .line 1005
    iput-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1007
    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6a
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1013
    :cond_74
    :goto_74
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_fb

    const/4 v2, 0x1

    .line 1014
    .local v2, "hasText":Z
    :goto_7b
    if-eqz v2, :cond_fe

    .line 1015
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_c3

    .line 1016
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1017
    .local v8, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v11}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$900(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1018
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1019
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1020
    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1021
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v10}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1000(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)Z

    move-result v10

    if-eqz v10, :cond_be

    .line 1022
    invoke-virtual {v8}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v10

    iget-object v11, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-static {v11}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->access$1100(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1025
    :cond_be
    invoke-virtual {p0, v8, v13, v13}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->addView(Landroid/view/View;II)V

    .line 1026
    iput-object v8, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    .line 1028
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_c3
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1034
    :cond_cd
    :goto_cd
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_da

    .line 1035
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1037
    :cond_da
    if-nez v2, :cond_10d

    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10d

    .line 1038
    invoke-virtual {p0, p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_36

    .line 1009
    .end local v2    # "hasText":Z
    :cond_eb
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_74

    .line 1010
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1011
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_74

    :cond_fb
    move v2, v9

    .line 1013
    goto/16 :goto_7b

    .line 1030
    .restart local v2    # "hasText":Z
    :cond_fe
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_cd

    .line 1031
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1032
    iget-object v10, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_cd

    .line 1040
    :cond_10d
    invoke-virtual {p0, v12}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1041
    invoke-virtual {p0, v9}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->setLongClickable(Z)V

    goto/16 :goto_36
.end method
