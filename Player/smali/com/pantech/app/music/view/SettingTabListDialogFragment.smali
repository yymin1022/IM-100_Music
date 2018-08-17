.class public Lcom/pantech/app/music/view/SettingTabListDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingTabListDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/view/SettingTabListDialogFragment$3;,
        Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;,
        Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;,
        Lcom/pantech/app/music/view/SettingTabListDialogFragment$TabListColumn;,
        Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;
    }
.end annotation


# static fields
.field public static final DIALOG_TYPE_KEY:Ljava/lang/String; = "settingDialogTypeKey"

.field public static final DIALOG_TYPE_TAB_SELECT_AND_ARRANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SettingTabListDialogFragment"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mListSelectItemMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedButtonListener:Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mListSelectItemMap:Ljava/util/Hashtable;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/view/SettingTabListDialogFragment;)Ljava/util/Hashtable;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mListSelectItemMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/view/SettingTabListDialogFragment;)Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mPressedButtonListener:Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;

    return-object v0
.end method

.method private checkAndSaveCursorData(Landroid/util/SparseBooleanArray;Ljava/util/ArrayList;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "checkMap"    # Landroid/util/SparseBooleanArray;
    .param p3, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p4, "str_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    .local p5, "savedCL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_19

    .line 286
    invoke-virtual {p3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 287
    invoke-direct {p0, p3, p4, p5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->makeItemForCursor(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_19
    return-void
.end method

.method private getSelectAndArrangeDialog()Landroid/app/AlertDialog$Builder;
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v6, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08007b

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-direct {p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getTabSelectArrangeListCursor()Lcom/pantech/app/music/common/ArrayListCursor;

    move-result-object v3

    .line 141
    .local v3, "mapCursor":Lcom/pantech/app/music/common/ArrayListCursor;
    iget-object v1, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mListSelectItemMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 142
    invoke-virtual {v3}, Lcom/pantech/app/music/common/ArrayListCursor;->moveToFirst()Z

    .line 143
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_23
    invoke-virtual {v3}, Lcom/pantech/app/music/common/ArrayListCursor;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_50

    .line 145
    const-string v1, "_id"

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/common/ArrayListCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/common/ArrayListCursor;->getInt(I)I

    move-result v9

    .line 146
    .local v9, "key":I
    const-string v1, "_tabselect"

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/common/ArrayListCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/common/ArrayListCursor;->getInt(I)I

    move-result v10

    .line 147
    .local v10, "selected":I
    iget-object v1, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mListSelectItemMap:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v2, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v3}, Lcom/pantech/app/music/common/ArrayListCursor;->moveToNext()Z

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 151
    .end local v9    # "key":I
    .end local v10    # "selected":I
    :cond_50
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 152
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03003d

    invoke-virtual {v8, v1, v14, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 153
    .local v12, "view":Landroid/view/View;
    const v1, 0x7f1000aa

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;

    .line 154
    .local v11, "tabSelectArrangeListView":Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;
    new-instance v0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;-><init>(Lcom/pantech/app/music/view/SettingTabListDialogFragment;Landroid/content/Context;Landroid/database/Cursor;ZI)V

    .line 157
    .local v0, "tabSelectListadapter":Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;
    invoke-virtual {v11, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->setChoiceMode(I)V

    .line 159
    invoke-virtual {v11, v5}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->setActiveMode(I)V

    .line 160
    invoke-virtual {v11, p0}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    invoke-virtual {v11, v4}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->setSoundEffectsEnabled(Z)V

    .line 163
    new-instance v1, Lcom/pantech/app/music/view/SettingTabListDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment$1;-><init>(Lcom/pantech/app/music/view/SettingTabListDialogFragment;)V

    invoke-virtual {v11, v1}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->setDropListener(Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;)V

    .line 179
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 181
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->setBackgroundColor(I)V

    .line 184
    :cond_a2
    invoke-virtual {v6, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 186
    const v1, 0x7f080028

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;-><init>(Lcom/pantech/app/music/view/SettingTabListDialogFragment;Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    const v1, 0x7f0800af

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    return-object v6
.end method

.method private getTabSelectArrangeListCursor()Lcom/pantech/app/music/common/ArrayListCursor;
    .registers 13

    .prologue
    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getCategoryPosition(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 223
    .local v5, "savedCL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 226
    .local v1, "checkMap":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 228
    .local v7, "categoryOrdinal":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v6

    .line 231
    .local v6, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    sget-object v0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$3;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_fc

    .line 241
    const v11, 0x7f080083

    .line 244
    .local v11, "text_ID":I
    :goto_38
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v6, v0, :cond_42

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUplusBoxUse()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 247
    :cond_42
    invoke-direct {p0, v6, v11, v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->makeItemForCursor(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_16

    .line 233
    .end local v11    # "text_ID":I
    :pswitch_52
    const v11, 0x7f0801b9

    .restart local v11    # "text_ID":I
    goto :goto_38

    .line 234
    .end local v11    # "text_ID":I
    :pswitch_56
    const v11, 0x7f080083

    .restart local v11    # "text_ID":I
    goto :goto_38

    .line 235
    .end local v11    # "text_ID":I
    :pswitch_5a
    const v11, 0x7f080017

    .restart local v11    # "text_ID":I
    goto :goto_38

    .line 236
    .end local v11    # "text_ID":I
    :pswitch_5e
    const v11, 0x7f080018

    .restart local v11    # "text_ID":I
    goto :goto_38

    .line 237
    .end local v11    # "text_ID":I
    :pswitch_62
    const v11, 0x7f08003d

    .restart local v11    # "text_ID":I
    goto :goto_38

    .line 238
    .end local v11    # "text_ID":I
    :pswitch_66
    const v11, 0x7f0800b9

    .restart local v11    # "text_ID":I
    goto :goto_38

    .line 239
    .end local v11    # "text_ID":I
    :pswitch_6a
    const v11, 0x7f080061

    .restart local v11    # "text_ID":I
    goto :goto_38

    .line 240
    .end local v11    # "text_ID":I
    :pswitch_6e
    const v11, 0x7f08005f

    .restart local v11    # "text_ID":I
    goto :goto_38

    .line 252
    .end local v6    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v7    # "categoryOrdinal":Ljava/lang/Integer;
    .end local v11    # "text_ID":I
    :cond_72
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v10

    .line 254
    .local v10, "isCustomDB":Z
    if-nez v10, :cond_96

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModeL Info:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 259
    :cond_96
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUplusBoxUse()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 260
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const v4, 0x7f0801b9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->checkAndSaveCursorData(Landroid/util/SparseBooleanArray;Ljava/util/ArrayList;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)V

    .line 262
    :cond_a5
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const v4, 0x7f080083

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->checkAndSaveCursorData(Landroid/util/SparseBooleanArray;Ljava/util/ArrayList;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)V

    .line 263
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const v4, 0x7f080017

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->checkAndSaveCursorData(Landroid/util/SparseBooleanArray;Ljava/util/ArrayList;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)V

    .line 264
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const v4, 0x7f080018

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->checkAndSaveCursorData(Landroid/util/SparseBooleanArray;Ljava/util/ArrayList;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)V

    .line 265
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const v4, 0x7f080061

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->checkAndSaveCursorData(Landroid/util/SparseBooleanArray;Ljava/util/ArrayList;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)V

    .line 267
    if-eqz v10, :cond_d4

    .line 268
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const v4, 0x7f0800b9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->checkAndSaveCursorData(Landroid/util/SparseBooleanArray;Ljava/util/ArrayList;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)V

    .line 270
    :cond_d4
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const v4, 0x7f08003d

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->checkAndSaveCursorData(Landroid/util/SparseBooleanArray;Ljava/util/ArrayList;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)V

    .line 272
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "devNowPlayingTab"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    .line 273
    .local v8, "enableNowplayingTab":Z
    if-eqz v8, :cond_f3

    .line 274
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const v4, 0x7f08005f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->checkAndSaveCursorData(Landroid/util/SparseBooleanArray;Ljava/util/ArrayList;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)V

    .line 276
    :cond_f3
    new-instance v0, Lcom/pantech/app/music/common/ArrayListCursor;

    sget-object v3, Lcom/pantech/app/music/view/SettingTabListDialogFragment$TabListColumn;->_COL:[Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    .line 231
    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_52
        :pswitch_56
        :pswitch_5a
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_6a
        :pswitch_6e
    .end packed-switch
.end method

.method private makeItemForCursor(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "type"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "text_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    .local p3, "savedCL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v0, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0, p2}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    :goto_26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    return-object v0

    .line 298
    :cond_2e
    const/4 v1, 0x1

    goto :goto_26
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 12
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    const-string v4, "SettingTabListDialogFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckedChanged() isChecked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 99
    .local v3, "id":I
    iget-object v7, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mListSelectItemMap:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-ne p2, v6, :cond_54

    move v4, v5

    :goto_2d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "checkedItemCount":I
    iget-object v4, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mListSelectItemMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3f

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .end local v1    # "checkedItemCount":I
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_54
    move v4, v6

    .line 99
    goto :goto_2d

    .line 109
    .restart local v1    # "checkedItemCount":I
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_56
    const/4 v0, 0x1

    .line 110
    .local v0, "btnEnable":Z
    const-string v4, "SettingTabListDialogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCheckedChanged() Checked item count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v4, 0x2

    if-ge v1, v4, :cond_73

    .line 113
    const/4 v0, 0x0

    .line 115
    :cond_73
    iget-object v4, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 116
    iget-object v4, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    :cond_89
    invoke-virtual {p1, v5}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 119
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string v2, "SettingTabListDialogFragment"

    const-string v3, "onCreateDialog"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "settingDialogTypeKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, "type":I
    invoke-direct {p0}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getSelectAndArrangeDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 90
    iget-object v2, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "SettingTabListDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick() position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const v1, 0x7f100141

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 129
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    :goto_28
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    return-void

    .line 129
    :cond_2c
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public setOnPressedButtonListener(Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->mPressedButtonListener:Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;

    .line 386
    return-void
.end method
