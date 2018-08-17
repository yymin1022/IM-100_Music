.class public Lcom/pantech/app/music/library/ListDialog;
.super Landroid/app/DialogFragment;
.source "ListDialog.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/ListDialog$4;,
        Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;"
    }
.end annotation


# static fields
.field public static final OPTION_CHECK_MODE:I = 0x4

.field public static final OPTION_CONFIRM_BUTTON:I = 0x1

.field public static final OPTION_MIN_SEL_COUNT_2:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ListDialog"


# instance fields
.field iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

.field mBtnCancel:Landroid/widget/Button;

.field mBtnConfirm:Landroid/widget/Button;

.field mCursorLoader:Landroid/content/CursorLoader;

.field mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

.field mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field mListener:Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;

.field mLoaderTrackID:I

.field private mOptions:I

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mTracksAdapterItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 42
    iput v0, p0, Lcom/pantech/app/music/library/ListDialog;->mOptions:I

    .line 62
    iput v0, p0, Lcom/pantech/app/music/library/ListDialog;->mLoaderTrackID:I

    .line 248
    new-instance v0, Lcom/pantech/app/music/library/ListDialog$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/ListDialog$3;-><init>(Lcom/pantech/app/music/library/ListDialog;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListDialog;->mTracksAdapterItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/library/ListDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListDialog;

    .prologue
    .line 35
    iget v0, p0, Lcom/pantech/app/music/library/ListDialog;->mOptions:I

    return v0
.end method


# virtual methods
.method public addOptions(I)V
    .registers 2
    .param p1, "options"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/pantech/app/music/library/ListDialog;->mOptions:I

    .line 73
    return-void
.end method

.method public getGroupList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v0}, Lcom/pantech/app/music/library/IListAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    sget-boolean v8, Lcom/pantech/app/music/utils/ActivityUtils;->mHasPermission:Z

    if-nez v8, :cond_8

    .line 207
    :goto_7
    return-void

    .line 178
    :cond_8
    const-string v8, "ListDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityCreated():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v10}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v8, Lcom/pantech/app/music/library/ListDialog$4;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v9, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v9}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_b6

    goto :goto_7

    .line 183
    :pswitch_38
    iget-object v8, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v8}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v8

    iput v8, p0, Lcom/pantech/app/music/library/ListDialog;->mLoaderTrackID:I

    .line 184
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    iget v9, p0, Lcom/pantech/app/music/library/ListDialog;->mLoaderTrackID:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_7

    .line 188
    :pswitch_4f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v5, "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v6, "selectArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/app/music/library/helper/TabListHelper;->getTabListEnable(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 191
    .local v2, "enableArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/app/music/library/helper/TabListHelper;->getTabListAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 194
    .local v7, "totalArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 195
    .local v0, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    new-instance v8, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/pantech/app/music/library/FragmentInfo$Category;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v10, v11, v9}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_92
    :goto_92
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 197
    .local v1, "enable":Lcom/pantech/app/music/library/FragmentInfo$Category;
    if-ne v0, v1, :cond_92

    .line 198
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 204
    .end local v0    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    .end local v1    # "enable":Lcom/pantech/app/music/library/FragmentInfo$Category;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_ae
    iget-object v8, p0, Lcom/pantech/app/music/library/ListDialog;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v8, v5, v6}, Lcom/pantech/app/music/library/IListAdapter;->changeArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 181
    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_38
        :pswitch_4f
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 213
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 215
    const-string v1, "bundle.key.fragment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/library/FragmentInfo;

    iput-object v1, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    .line 218
    :cond_13
    iget-object v1, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    if-eqz v1, :cond_36

    .line 219
    const-string v1, "ListDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttach() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_35
    return-void

    .line 221
    :cond_36
    const-string v1, "ListDialog"

    const-string v2, "onAttach()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v0, "ListDialog"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    const v1, 0x10306df

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/library/ListDialog;->setStyle(II)V

    .line 85
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const-string v6, "ListDialog"

    const-string v7, "onCreateDialog()"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p1, :cond_11

    .line 97
    const-string v6, "options"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/pantech/app/music/library/ListDialog;->mOptions:I

    .line 101
    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x10306df

    invoke-direct {v6, v7, v8}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-boolean v6, Lcom/pantech/app/music/utils/ActivityUtils;->mHasPermission:Z

    if-nez v6, :cond_2b

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 168
    :goto_2a
    return-object v6

    .line 109
    :cond_2b
    iget-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/library/FragmentInfo;->getHeaderTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 112
    .local v2, "i":Landroid/view/LayoutInflater;
    const v6, 0x7f030077

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 113
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 115
    iget v6, p0, Lcom/pantech/app/music/library/ListDialog;->mOptions:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_74

    .line 116
    const v6, 0x7f0800fe

    new-instance v7, Lcom/pantech/app/music/library/ListDialog$1;

    invoke-direct {v7, p0}, Lcom/pantech/app/music/library/ListDialog$1;-><init>(Lcom/pantech/app/music/library/ListDialog;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;

    if-eqz v6, :cond_74

    .line 129
    const-string v6, "ListDialog"

    const-string v7, "getActivity() instanceof NoticeDialogListener"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/library/ListDialog;->setOnNoticeDialogListener(Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;)V

    .line 134
    :cond_74
    const v6, 0x7f0800af

    new-instance v7, Lcom/pantech/app/music/library/ListDialog$2;

    invoke-direct {v7, p0}, Lcom/pantech/app/music/library/ListDialog$2;-><init>(Lcom/pantech/app/music/library/ListDialog;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    new-instance v3, Lcom/pantech/app/music/library/ListAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-direct {v3, v6, v7}, Lcom/pantech/app/music/library/ListAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)V

    .local v3, "listAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    move-object v6, v3

    .line 147
    check-cast v6, Lcom/pantech/app/music/library/IListAdapter;

    iput-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    .line 148
    iget-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    iget-object v7, p0, Lcom/pantech/app/music/library/ListDialog;->mTracksAdapterItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    invoke-interface {v6, v7, p0}, Lcom/pantech/app/music/library/IListAdapter;->setOnItemListener(Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;)V

    .line 151
    const v6, 0x7f1000ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    iput-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 152
    iget-object v7, p0, Lcom/pantech/app/music/library/ListDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    check-cast v6, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 155
    iget-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Lcom/pantech/app/music/component/WCLinearLayoutManager;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/pantech/app/music/component/WCLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 158
    iget-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 159
    const/4 v4, 0x0

    .line 160
    .local v4, "swipeEnable":Z
    iget-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 161
    const/4 v4, 0x1

    .line 163
    :cond_ce
    new-instance v1, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;

    check-cast v3, Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;

    .end local v3    # "listAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-direct {v1, v3, v4}, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;-><init>(Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;Z)V

    .line 164
    .local v1, "callback":Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    new-instance v6, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v6, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 165
    iget-object v6, p0, Lcom/pantech/app/music/library/ListDialog;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lcom/pantech/app/music/library/ListDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 168
    .end local v1    # "callback":Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .end local v4    # "swipeEnable":Z
    :cond_e3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_2a
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    const-string v0, "ListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateLoader() id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/pantech/app/music/component/ExtendCursorLoader;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/component/ExtendCursorLoader;-><init>(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListDialog;->mCursorLoader:Landroid/content/CursorLoader;

    .line 304
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog;->mCursorLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method public onDetach()V
    .registers 3

    .prologue
    .line 241
    const-string v0, "ListDialog"

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    if-eqz v0, :cond_11

    .line 243
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 245
    :cond_11
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 246
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 6
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "ListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished() cursor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListDialog;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v0, p2}, Lcom/pantech/app/music/library/IListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 311
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/library/ListDialog;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "ListDialog"

    const-string v1, "onLoaderReset()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    const-string v0, "options"

    iget v1, p0, Lcom/pantech/app/music/library/ListDialog;->mOptions:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    return-void
.end method

.method public onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/pantech/app/music/library/ListDialog;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 297
    return-void
.end method

.method public setOnNoticeDialogListener(Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/pantech/app/music/library/ListDialog;->mListener:Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;

    .line 69
    return-void
.end method
