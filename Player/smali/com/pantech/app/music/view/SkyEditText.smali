.class public Lcom/pantech/app/music/view/SkyEditText;
.super Landroid/widget/LinearLayout;
.source "SkyEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/view/SkyEditText$SavedState;,
        Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;,
        Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;
    }
.end annotation


# static fields
.field private static final EDITTEXT_LENGTH_DEFAULT:I = 0x64

.field private static final ID_DELETE_BUTTON:I = 0x1000

.field private static final ID_EDITTEXT:I = 0x0

.field private static final ID_LINEARLAYOUT:I = 0x3000

.field private static final ID_UNDO_BUTTON:I = 0x2000

.field public static final KEY_UNDO_STATE:I = 0x7777

.field private static final SIZE_BUTTON:I = 0x16

.field public static final STATE_UNDO_GONE:I = 0x2

.field public static final STATE_UNDO_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VMusicEditText"

.field private static emojiIcons:[I


# instance fields
.field private mAfterText:Ljava/lang/CharSequence;

.field private mBtnLayout:Landroid/widget/LinearLayout;

.field private mDelButton:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field private mIsShowUndo:Z

.field mSpecialCharacterFilter:Landroid/text/InputFilter;

.field private mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

.field private mUndoButton:Landroid/widget/Button;

.field private mUndoText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/16 v0, 0x6b

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/pantech/app/music/view/SkyEditText;->emojiIcons:[I

    return-void

    :array_a
    .array-data 4
        0xa9
        0xae
        0x203c
        0x2049
        0x2122
        0x2139
        0x2198
        0x2199
        0x21a9
        0x21aa
        0x231a
        0x231b
        0x23e9
        0x23ea
        0x23eb
        0x23ec
        0x23f0
        0x23f3
        0x24c2
        0x25aa
        0x25ab
        0x25fb
        0x25fc
        0x25fd
        0x25fe
        0x2600
        0x2601
        0x2611
        0x2614
        0x2615
        0x261d
        0x263a
        0x2648
        0x2649
        0x264a
        0x264b
        0x264c
        0x264d
        0x264e
        0x264f
        0x2650
        0x2651
        0x2652
        0x2653
        0x2666
        0x2668
        0x267b
        0x267f
        0x2693
        0x26a0
        0x26a1
        0x26aa
        0x26ab
        0x26bd
        0x26be
        0x26c4
        0x26c5
        0x26ce
        0x26d4
        0x26ea
        0x26f2
        0x26f3
        0x26f5
        0x26fa
        0x26fd
        0x2702
        0x2705
        0x2708
        0x2709
        0x270a
        0x270b
        0x270c
        0x270f
        0x2712
        0x2714
        0x2716
        0x2728
        0x2733
        0x2734
        0x2744
        0x2747
        0x274c
        0x274e
        0x2753
        0x2754
        0x2755
        0x2757
        0x2764
        0x2795
        0x2796
        0x2797
        0x27a1
        0x27b0
        0x27bf
        0x2934
        0x2935
        0x2b05
        0x2b06
        0x2b07
        0x2b1b
        0x2b1c
        0x2b50
        0x2b55
        0x3030
        0x303d
        0x3297
        0x3299
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/view/SkyEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mIsShowUndo:Z

    .line 75
    new-instance v0, Lcom/pantech/app/music/view/SkyEditText$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyEditText$1;-><init>(Lcom/pantech/app/music/view/SkyEditText;)V

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterFilter:Landroid/text/InputFilter;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/view/SkyEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/view/SkyEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/view/SkyEditText;)Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyEditText;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    return-object v0
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/pantech/app/music/view/SkyEditText;->emojiIcons:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyEditText;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyEditText;->deleteText()V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/app/music/view/SkyEditText;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyEditText;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/view/SkyEditText;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyEditText;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyEditText;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyEditText;->undoText()V

    return-void
.end method

.method static synthetic access$600(Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyEditText;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyEditText;->checkedText()V

    return-void
.end method

.method private checkedText()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 293
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 295
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 297
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    :goto_19
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 313
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    :cond_2b
    return-void

    .line 300
    :cond_2c
    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mIsShowUndo:Z

    if-eqz v1, :cond_41

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 302
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_19

    .line 307
    :cond_41
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_19
.end method

.method private convertDipToPixels(I)I
    .registers 6
    .param p1, "ndip"    # I

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 453
    .local v0, "mScale":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 454
    .local v1, "nPexel":I
    return v1
.end method

.method private deleteText()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    .line 275
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 277
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v12, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 146
    const-string v4, "VMusicEditText"

    const-string v5, "init() "

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    if-nez v4, :cond_5d

    .line 151
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    .line 152
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 153
    .local v1, "eidttextparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 156
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v9, v5, v9, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 157
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    iget-object v6, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterFilter:Landroid/text/InputFilter;

    aput-object v6, v5, v9

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 159
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 163
    .end local v1    # "eidttextparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5d
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x16

    invoke-direct {p0, v4}, Lcom/pantech/app/music/view/SkyEditText;->convertDipToPixels(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 165
    const/16 v4, 0x16

    invoke-direct {p0, v4}, Lcom/pantech/app/music/view/SkyEditText;->convertDipToPixels(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 167
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    if-nez v4, :cond_9b

    .line 169
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    .line 170
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    const v5, 0x7f020067

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 172
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    new-instance v5, Lcom/pantech/app/music/view/SkyEditText$2;

    invoke-direct {v5, p0}, Lcom/pantech/app/music/view/SkyEditText$2;-><init>(Lcom/pantech/app/music/view/SkyEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_9b
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    if-nez v4, :cond_c4

    .line 188
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    .line 189
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    const v5, 0x7f020068

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 191
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    new-instance v5, Lcom/pantech/app/music/view/SkyEditText$3;

    invoke-direct {v5, p0}, Lcom/pantech/app/music/view/SkyEditText$3;-><init>(Lcom/pantech/app/music/view/SkyEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :cond_c4
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mBtnLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_ef

    .line 206
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 207
    .local v0, "buttonlayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/pantech/app/music/view/SkyEditText;->convertDipToPixels(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 208
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/pantech/app/music/view/SkyEditText;->convertDipToPixels(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 209
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mBtnLayout:Landroid/widget/LinearLayout;

    .line 210
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mBtnLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 211
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .end local v0    # "buttonlayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_ef
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mBtnLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mBtnLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 219
    .local v2, "linearlayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/view/SkyEditText;->addView(Landroid/view/View;)V

    .line 220
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyEditText;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/view/SkyEditText;->addView(Landroid/view/View;)V

    .line 221
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/view/SkyEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {p0, v10}, Lcom/pantech/app/music/view/SkyEditText;->setAddStatesFromChildren(Z)V

    .line 223
    invoke-virtual {p0, v9}, Lcom/pantech/app/music/view/SkyEditText;->setFocusable(Z)V

    .line 224
    const v4, 0x7f020317

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/view/SkyEditText;->setBackgroundResource(I)V

    .line 225
    return-void
.end method

.method private undoText()V
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 284
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 286
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 288
    :cond_1f
    return-void
.end method

.method private updateView()V
    .registers 3

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mIsShowUndo:Z

    if-eqz v0, :cond_a

    .line 475
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 477
    :cond_a
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 257
    const-string v0, "VMusicEditText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterTextChanged: s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyEditText;->mAfterText:Ljava/lang/CharSequence;

    .line 260
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyEditText;->checkedText()V

    .line 261
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 250
    const-string v0, "VMusicEditText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    .line 268
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 269
    return-void
.end method

.method public getEditTextView()Landroid/view/View;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getUndoBtnState()Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;
    .registers 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    if-eqz v1, :cond_26

    .line 417
    new-instance v0, Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;-><init>(Lcom/pantech/app/music/view/SkyEditText;)V

    .line 418
    .local v0, "state":Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    :goto_12
    iput v1, v0, Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;->visible:I

    .line 419
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    iput-object v1, v0, Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;->text:Ljava/lang/String;

    .line 424
    .end local v0    # "state":Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;
    :goto_20
    return-object v0

    .line 418
    .restart local v0    # "state":Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;
    :cond_21
    const/4 v1, 0x2

    goto :goto_12

    .line 419
    :cond_23
    const-string v1, ""

    goto :goto_1e

    .line 424
    .end local v0    # "state":Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;
    :cond_26
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public length()I
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 485
    const-string v2, "VMusicEditText"

    const-string v3, "onRestoreInstanceState()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    instance-of v2, p1, Lcom/pantech/app/music/view/SkyEditText$SavedState;

    if-nez v2, :cond_14

    .line 491
    :try_start_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_f

    .line 521
    :goto_e
    return-void

    .line 493
    :catch_f
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_e

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_14
    move-object v1, p1

    .line 501
    check-cast v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;

    .line 502
    .local v1, "ss":Lcom/pantech/app/music/view/SkyEditText$SavedState;
    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyEditText$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 504
    iget-object v2, v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_26

    .line 506
    iget-object v2, v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;->text:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/pantech/app/music/view/SkyEditText;->mAfterText:Ljava/lang/CharSequence;

    .line 509
    :cond_26
    iget-object v2, v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;->undotext:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2e

    .line 511
    iget-object v2, v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;->undotext:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    .line 515
    :cond_2e
    iget-boolean v2, v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;->btVisivility:Z

    if-eqz v2, :cond_35

    .line 517
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/music/view/SkyEditText;->mIsShowUndo:Z

    .line 520
    :cond_35
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyEditText;->updateView()V

    goto :goto_e
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 526
    const-string v3, "VMusicEditText"

    const-string v4, "onSaveInstanceState()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 529
    .local v2, "superState":Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 530
    .local v0, "save":Z
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_19

    .line 532
    const/4 v0, 0x1

    .line 535
    :cond_19
    new-instance v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;

    invoke-direct {v1, v2}, Lcom/pantech/app/music/view/SkyEditText$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 538
    .local v1, "ss":Lcom/pantech/app/music/view/SkyEditText$SavedState;
    iput-boolean v0, v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;->btVisivility:Z

    .line 540
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyEditText;->mAfterText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 542
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyEditText;->mAfterText:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;->text:Ljava/lang/CharSequence;

    .line 545
    :cond_2c
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 547
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/pantech/app/music/view/SkyEditText$SavedState;->undotext:Ljava/lang/CharSequence;

    .line 550
    :cond_38
    return-object v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 231
    const-string v2, "VMusicEditText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " listener: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    if-eqz v1, :cond_4b

    const-string v1, "enable"

    :goto_1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    if-eqz v1, :cond_4a

    if-eqz p1, :cond_4a

    .line 235
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "newText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4e

    .line 240
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;->onTextChange(Ljava/lang/String;Z)V

    .line 244
    .end local v0    # "newText":Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void

    .line 231
    :cond_4b
    const-string v1, "disable"

    goto :goto_1d

    .line 242
    .restart local v0    # "newText":Ljava/lang/String;
    :cond_4e
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;->onTextChange(Ljava/lang/String;Z)V

    goto :goto_4a
.end method

.method public setFilters(Landroid/text/InputFilter;)V
    .registers 7
    .param p1, "filter"    # Landroid/text/InputFilter;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterFilter:Landroid/text/InputFilter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 330
    return-void
.end method

.method public final setHint(I)V
    .registers 4
    .param p1, "resid"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 359
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 353
    return-void
.end method

.method public setInputType(I)V
    .registers 3
    .param p1, "inputType"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 377
    return-void
.end method

.method public setOnSpecialCharacterListener(Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    .line 122
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 371
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3
    .param p1, "isSingle"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 389
    return-void
.end method

.method public setSkyEditTextId(I)V
    .registers 4
    .param p1, "nId"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    add-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 465
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mDelButton:Landroid/widget/Button;

    add-int/lit16 v1, p1, 0x1000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 466
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    add-int/lit16 v1, p1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 467
    add-int/lit16 v0, p1, 0x3000

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyEditText;->setId(I)V

    .line 468
    return-void
.end method

.method public final setText(I)V
    .registers 4
    .param p1, "resid"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method

.method public setUndoBtnState(Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;)V
    .registers 5
    .param p1, "state"    # Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 432
    iget v0, p1, Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;->visible:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 434
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    if-eqz v0, :cond_1c

    .line 437
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mSpecialCharacterListener:Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;->onTextChange(Ljava/lang/String;Z)V

    .line 444
    :cond_1c
    :goto_1c
    iget-object v0, p1, Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    .line 446
    :cond_20
    return-void

    .line 441
    :cond_21
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText;->mUndoButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1c
.end method
