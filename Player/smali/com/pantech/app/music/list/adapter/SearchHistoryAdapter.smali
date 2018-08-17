.class public Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SearchHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$1;,
        Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;,
        Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mContext:Landroid/content/Context;

.field mListView:Landroid/widget/ListView;

.field mViewInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/widget/ListView;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoRequery"    # Z
    .param p3, "categoryType"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p4, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 32
    iput-object p3, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 33
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p4, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->mListView:Landroid/widget/ListView;

    .line 36
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method private getHistoryUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 98
    sget-object v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 102
    sget-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;->LOCAL_URI:Landroid/net/Uri;

    :goto_f
    return-object v0

    .line 100
    :pswitch_10
    sget-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;->LOCAL_URI:Landroid/net/Uri;

    goto :goto_f

    .line 101
    :pswitch_13
    sget-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;->ONLINE_URI:Landroid/net/Uri;

    goto :goto_f

    .line 98
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;

    .line 62
    .local v0, "holder":Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;
    const-string v3, "search_word"

    invoke-static {p3, v3}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "title":Ljava/lang/String;
    const-string v3, "_id"

    invoke-static {p3, v3}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "id":I
    iget-object v3, v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;->mDeleteSearchHistroyBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v3, v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;->mDeleteSearchHistroyBtn:Landroid/widget/ImageButton;

    new-instance v4, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;

    invoke-direct {v4, p0, v2, v1}, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;-><init>(Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v3, v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;->mSearchTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03006d

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;-><init>(Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;)V

    .line 77
    .local v0, "holder":Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;
    const v2, 0x7f1000f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;->mSearchTitleView:Landroid/widget/TextView;

    .line 78
    const v2, 0x7f100116

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;->mDeleteSearchHistroyBtn:Landroid/widget/ImageButton;

    .line 79
    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;->mDeleteSearchHistroyBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 80
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;

    .line 90
    .local v0, "param":Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->getHistoryUri()Landroid/net/Uri;

    move-result-object v2

    iget v3, v0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;->mSearchHistoryID:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/pantech/app/music/db/SearchHistoryManager;->deleteHistory(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 92
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_22

    .line 93
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 94
    :cond_22
    return-void
.end method
