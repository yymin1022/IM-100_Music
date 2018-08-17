.class public Lcom/pantech/app/music/list/fragment/SearchListFragment;
.super Lcom/pantech/app/music/list/fragment/ListFragment;
.source "SearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/fragment/SearchListFragment$6;
    }
.end annotation


# static fields
.field private static final SEARCH_TYPE_NORMAL:I


# instance fields
.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field mSeachHistoryAdapter:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

.field mSeachHistoryListView:Landroid/widget/ListView;

.field mSearchEditText:Landroid/widget/EditText;

.field mSearchType:I

.field mSearchView:[Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchView:[Landroid/widget/SearchView;

    .line 237
    new-instance v0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;-><init>(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 316
    new-instance v0, Lcom/pantech/app/music/list/fragment/SearchListFragment$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment$2;-><init>(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 328
    new-instance v0, Lcom/pantech/app/music/list/fragment/SearchListFragment$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment$3;-><init>(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/fragment/SearchListFragment;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/SearchListFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getHistoryUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/SearchListFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->hideInputMethod()V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/music/list/fragment/SearchListFragment;I)Landroid/widget/SearchView;
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/SearchListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchView(I)Landroid/widget/SearchView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/list/fragment/SearchListFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/SearchListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->setSearchWord(Ljava/lang/String;)V

    return-void
.end method

.method private clearSearchView(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchView:[Landroid/widget/SearchView;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 98
    return-void
.end method

.method private getDefaultSearchView(Landroid/widget/SearchView;)Landroid/widget/SearchView;
    .registers 6
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    const/4 v3, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 214
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 216
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 217
    invoke-virtual {p1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 218
    invoke-virtual {p1, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 219
    invoke-virtual {p1, v3}, Landroid/widget/SearchView;->setFocusableInTouchMode(Z)V

    .line 221
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->setEditTextInSearchView(Landroid/view/View;I)V

    .line 223
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 224
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 226
    return-object p1
.end method

.method private getHistoryUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 405
    sget-object v0, Lcom/pantech/app/music/list/fragment/SearchListFragment$6;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 409
    sget-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;->LOCAL_URI:Landroid/net/Uri;

    :goto_f
    return-object v0

    .line 407
    :pswitch_10
    sget-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;->LOCAL_URI:Landroid/net/Uri;

    goto :goto_f

    .line 408
    :pswitch_13
    sget-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;->ONLINE_URI:Landroid/net/Uri;

    goto :goto_f

    .line 405
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method private getSearchView(I)Landroid/widget/SearchView;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchView:[Landroid/widget/SearchView;

    iget v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getSearchViewHintText()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f0801b0

    .line 415
    sget-object v0, Lcom/pantech/app/music/list/fragment/SearchListFragment$6;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 419
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    .line 417
    :pswitch_19
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 418
    :pswitch_22
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 415
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_22
    .end packed-switch
.end method

.method private getSearchViewType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    const/4 v2, 0x0

    .line 426
    sget-object v0, Lcom/pantech/app/music/list/fragment/SearchListFragment$6;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e

    .line 430
    :pswitch_c
    return v2

    .line 426
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private hideInputMethod()V
    .registers 4

    .prologue
    .line 545
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_1a

    .line 547
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 548
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 550
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1a
    return-void
.end method

.method private initSearchView()V
    .registers 5

    .prologue
    .line 202
    const-string v0, "VMusicSearchTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEditMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 206
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchView(I)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 208
    :cond_3b
    return-void
.end method

.method private setDefaultSearchWord(Landroid/widget/EditText;)V
    .registers 4
    .param p1, "et"    # Landroid/widget/EditText;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "queryText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 389
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 392
    :cond_16
    return-void
.end method

.method private setEditTextInSearchView(Landroid/view/View;I)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 356
    instance-of v3, p1, Landroid/widget/SearchView;

    if-eqz v3, :cond_18

    move-object v2, p1

    .line 358
    check-cast v2, Landroid/widget/SearchView;

    .line 359
    .local v2, "v":Landroid/widget/SearchView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {v2}, Landroid/widget/SearchView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4d

    .line 361
    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->setEditTextInSearchView(Landroid/view/View;I)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 364
    .end local v0    # "i":I
    .end local v2    # "v":Landroid/widget/SearchView;
    :cond_18
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_30

    move-object v1, p1

    .line 366
    check-cast v1, Landroid/widget/LinearLayout;

    .line 367
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_20
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4d

    .line 369
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->setEditTextInSearchView(Landroid/view/View;I)V

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 372
    .end local v0    # "i":I
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    :cond_30
    instance-of v3, p1, Landroid/widget/EditText;

    if-eqz v3, :cond_4d

    .line 374
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchEditText:Landroid/widget/EditText;

    .line 375
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchViewHintText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 378
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->setDefaultSearchWord(Landroid/widget/EditText;)V

    .line 380
    :cond_4d
    return-void
.end method

.method private setSearchWord(Ljava/lang/String;)V
    .registers 4
    .param p1, "searchWord"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 398
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 401
    :cond_18
    return-void
.end method


# virtual methods
.method protected changeSearchMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/PageInfoType;->setSearchMode(I)V

    .line 233
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0}, Lcom/pantech/app/music/list/activity/IListActivity;->getCurrentPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/PageInfoType;->setSearchMode(I)V

    .line 234
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-interface {v0, v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V

    .line 235
    return-void
.end method

.method doSearch(Ljava/lang/String;)V
    .registers 5
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x7

    .line 300
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/PageInfoType;->setExtraValue(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isSearchMode(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 308
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->changeSearchMode(I)V

    .line 311
    :cond_11
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.pantech.app.music.extras.listinfo"

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 312
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-interface {v0, v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->queryList(I)V

    .line 314
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v1}, Lcom/pantech/app/music/list/activity/IListActivity;->getCurrentPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    .line 107
    .local v0, "type":Lcom/pantech/app/music/list/PageInfoType;
    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 108
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchViewType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    .line 110
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 112
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchView:[Landroid/widget/SearchView;

    iget v2, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    new-instance v3, Landroid/widget/SearchView;

    invoke-direct {v3, p1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getDefaultSearchView(Landroid/widget/SearchView;)Landroid/widget/SearchView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchView(I)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 116
    :cond_3d
    const-string v1, "VMusicSearchTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttach:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const-string v0, "VMusicSearchTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->initSearchView()V

    .line 128
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->hideInputMethod()V

    .line 166
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 168
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/ListFragment;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 176
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchView(I)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_25

    .line 181
    iget v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchView(I)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 183
    :cond_25
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 189
    iget v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->clearSearchView(I)V

    .line 191
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 192
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 194
    :cond_25
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryAdapter:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

    if-eqz v0, :cond_2e

    .line 195
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryAdapter:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 197
    :cond_2e
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->onDetach()V

    .line 198
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 154
    iget v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchView(I)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 155
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->hideInputMethod()V

    .line 158
    :cond_14
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->onPause()V

    .line 159
    return-void
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 510
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onQueryComplete(Landroid/database/Cursor;)V

    .line 512
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 518
    invoke-static {p1}, Lcom/pantech/app/music/list/utility/ListUtil;->isValidCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 522
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 525
    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 136
    iget v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchView(I)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 137
    iget v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchView(I)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 139
    :cond_1d
    iget v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getSearchView(I)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 141
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->onResume()V

    .line 142
    return-void
.end method

.method queryList(I)V
    .registers 12
    .param p1, "queryType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 531
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/SmartFalg;->check(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 533
    const-string v0, "Querying. Check Routine."

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 537
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v9, v2

    .line 539
    .local v9, "priority":I
    :goto_18
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    iget-object v8, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getSearchMode()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(ZZILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    move-object v2, v6

    move v3, v9

    move-object v4, p0

    move-object v5, v8

    move-object v6, v0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/pantech/app/music/list/module/QueryFactory;->queryContents(ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V

    .line 540
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/SmartFalg;->set(I)V

    .line 541
    return-void

    .end local v9    # "priority":I
    :cond_3f
    move v9, v1

    .line 537
    goto :goto_18
.end method

.method setListAdapter(Landroid/view/View;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f1000b3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 438
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->setListAdapter(Landroid/view/View;)V

    .line 440
    const v3, 0x7f1000a5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 441
    .local v2, "viewgroup":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_1a

    .line 443
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 444
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 447
    :cond_1a
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    .line 448
    new-instance v3, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    invoke-direct {v3, v4, v8, v5, v6}, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;-><init>(Landroid/content/Context;ZLcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/widget/ListView;)V

    iput-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryAdapter:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

    .line 450
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 451
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030085

    invoke-virtual {v1, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, "historyHeaderView":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setClickable(Z)V

    .line 454
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    .line 455
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0, v10, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 456
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryAdapter:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 457
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0130

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 459
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 460
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    new-instance v4, Lcom/pantech/app/music/list/fragment/SearchListFragment$4;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment$4;-><init>(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 480
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    new-instance v4, Lcom/pantech/app/music/list/fragment/SearchListFragment$5;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment$5;-><init>(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 499
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryAdapter:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getHistoryUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/db/SearchHistoryManager;->queryHistory(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 501
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d4

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getHistoryUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/db/SearchHistoryManager;->checkHistoryIsEmpty(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 503
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 505
    :cond_d4
    return-void
.end method
