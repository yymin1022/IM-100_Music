.class public Lcom/pantech/app/music/view/SkyWheelSortingPicker;
.super Landroid/widget/FrameLayout;
.source "SkyWheelSortingPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;,
        Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final INPUT_LENGTH_TWO:I = 0x2

.field private static final NO_OP_CHANGE_LISTENER:Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;

.field private static final TAG:Ljava/lang/String; = "SkyWheelSortingPicker"


# instance fields
.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMainType:I

.field private mCurrentSubType:I

.field private mIsEnabled:Z

.field private mMainInput:Landroid/widget/EditText;

.field private mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

.field private mOnSortChangedListener:Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;

.field private mSubInput:Landroid/widget/EditText;

.field private mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    new-instance v0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$1;

    invoke-direct {v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$1;-><init>()V

    sput-object v0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->NO_OP_CHANGE_LISTENER:Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mIsEnabled:Z

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mIsEnabled:Z

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/view/SkyWheelSortingPicker;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/view/SkyWheelSortingPicker;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingPicker;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->updateCurrentSubType(I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v9, 0x7f1001ab

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    move-object v1, p1

    .line 111
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 114
    sget-object v5, Lcom/pantech/app/music/R$styleable;->NumberPicker:[I

    invoke-virtual {v1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v5, 0x8

    const v6, 0x7f0300b7

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 118
    .local v3, "layoutResourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 122
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    const v5, 0x7f1001a9

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iput-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .line 125
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setMinValue(I)V

    .line 126
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    sget-object v6, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setMaxValue(I)V

    .line 127
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v1}, Lcom/pantech/app/music/list/module/MusicLife;->getTitles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 129
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    new-instance v6, Lcom/pantech/app/music/view/SkyWheelSortingPicker$2;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$2;-><init>(Lcom/pantech/app/music/view/SkyWheelSortingPicker;)V

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setOnValueChangedListener(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;)V

    .line 137
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v5, v9}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainInput:Landroid/widget/EditText;

    .line 139
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainInput:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 140
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainInput:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 147
    sget-object v5, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;

    .line 148
    .local v4, "subItem":Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;
    const v5, 0x7f1001aa

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iput-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .line 149
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setMinValue(I)V

    .line 150
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-object v6, v4, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->mSubItemlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setMaxValue(I)V

    .line 151
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v4, v1}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->getTitles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    new-instance v6, Lcom/pantech/app/music/view/SkyWheelSortingPicker$3;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$3;-><init>(Lcom/pantech/app/music/view/SkyWheelSortingPicker;)V

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setOnValueChangedListener(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;)V

    .line 158
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v5, v9}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubInput:Landroid/widget/EditText;

    .line 160
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubInput:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 161
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubInput:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 164
    sget-object v5, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->NO_OP_CHANGE_LISTENER:Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setOnSortChangedListener(Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;)V

    .line 166
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_cc

    .line 167
    invoke-virtual {p0, v7}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setEnabled(Z)V

    .line 172
    :cond_cc
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_d5

    .line 173
    invoke-virtual {p0, v8}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setImportantForAccessibility(I)V

    .line 175
    :cond_d5
    return-void
.end method

.method private onSortChanged()V
    .registers 4

    .prologue
    .line 354
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->sendAccessibilityEvent(I)V

    .line 355
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mOnSortChangedListener:Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;

    if-eqz v0, :cond_15

    .line 356
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mOnSortChangedListener:Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getCurrentMainType()I

    move-result v1

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getCurrentSubType()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;->onSortChanged(Lcom/pantech/app/music/view/SkyWheelSortingPicker;II)V

    .line 358
    :cond_15
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    :goto_8
    return-void

    .line 224
    :cond_9
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mCurrentLocale:Ljava/util/Locale;

    goto :goto_8
.end method

.method private updateCurrentSubType(I)V
    .registers 6
    .param p1, "CurrentMainType"    # I

    .prologue
    .line 178
    const-string v1, "SkyWheelSortingPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentSubType: CurrentMainType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/pantech/app/music/list/module/MusicLife;->mMusicLifeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;

    .line 182
    .local v0, "subItem":Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setValue(I)V

    .line 183
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-object v2, v0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->mSubItemlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setMaxValue(I)V

    .line 184
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->getTitles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    .line 187
    return-void
.end method

.method private updateInputState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 367
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_23

    .line 368
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 369
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->clearFocus()V

    .line 370
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 376
    :cond_23
    :goto_23
    return-void

    .line 371
    :cond_24
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 372
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 373
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_23
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentMainType()I
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mCurrentMainType:I

    return v0
.end method

.method public getCurrentSubType()I
    .registers 2

    .prologue
    .line 309
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mCurrentSubType:I

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 213
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 344
    const-class v0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 350
    const-class v0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 351
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 339
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 283
    move-object v0, p1

    check-cast v0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;

    .line 284
    .local v0, "ss":Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 285
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->getMainType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setCurrentMainType(I)V

    .line 286
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;->getSubType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setCurrentSubType(I)V

    .line 287
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 278
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getCurrentMainType()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getCurrentSubType()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/pantech/app/music/view/SkyWheelSortingPicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/pantech/app/music/view/SkyWheelSortingPicker$1;)V

    return-object v1
.end method

.method public setCurrentMainType(I)V
    .registers 2
    .param p1, "currentMainType"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mCurrentMainType:I

    .line 317
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->onSortChanged()V

    .line 318
    return-void
.end method

.method public setCurrentSubType(I)V
    .registers 2
    .param p1, "currentSubType"    # I

    .prologue
    .line 321
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mCurrentSubType:I

    .line 322
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->onSortChanged()V

    .line 323
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    .line 202
    :goto_4
    return-void

    .line 194
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mSubPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mMainPicker:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setEnabled(Z)V

    .line 201
    iput-boolean p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mIsEnabled:Z

    goto :goto_4
.end method

.method public setOnSortChangedListener(Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;)V
    .registers 2
    .param p1, "sortChangedListener"    # Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->mOnSortChangedListener:Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;

    .line 296
    return-void
.end method
