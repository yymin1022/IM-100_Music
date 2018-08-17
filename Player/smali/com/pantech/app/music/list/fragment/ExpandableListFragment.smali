.class public Lcom/pantech/app/music/list/fragment/ExpandableListFragment;
.super Lcom/pantech/app/music/list/fragment/ListFragment;
.source "ExpandableListFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/fragment/ExpandableListFragment$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method protected collapseGroupAll(Landroid/widget/ExpandableListView;)V
    .registers 5
    .param p1, "listView"    # Landroid/widget/ExpandableListView;

    .prologue
    .line 170
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 172
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 174
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 176
    if-eqz p1, :cond_1e

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 178
    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 174
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 182
    .end local v0    # "groupCount":I
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 13
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "adapterView"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v3, 0x1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChildClick groupPosition:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " childPosition:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 114
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v2

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    if-ne v2, v4, :cond_65

    .line 116
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v2, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getChildType(II)I

    move-result v2

    if-ne v2, v3, :cond_65

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChildClick: Seperator NOT CLICKABLE!!!!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " childPosition:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    move v2, v3

    .line 142
    :goto_64
    return v2

    .line 123
    :cond_65
    const v2, 0x7f1000f2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 125
    .local v1, "view":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    const v2, 0x7f10000f

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 127
    .local v0, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mCursorLock:Ljava/lang/Object;

    new-instance v5, Lcom/pantech/app/music/list/fragment/ExpandableListFragment$1;

    invoke-direct {v5, p0}, Lcom/pantech/app/music/list/fragment/ExpandableListFragment$1;-><init>(Lcom/pantech/app/music/list/fragment/ExpandableListFragment;)V

    invoke-static {v2, p0, v0, v4, v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    move v2, v3

    .line 135
    goto :goto_64

    .line 142
    .end local v0    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    .end local v1    # "view":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    :cond_85
    const/4 v2, 0x0

    goto :goto_64
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 9
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v1, 0x1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupClick:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 156
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v0

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    if-ne v0, v2, :cond_51

    .line 158
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;

    invoke-virtual {v0, p3}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;->getGroupType(I)I

    move-result v0

    if-ne v0, v1, :cond_51

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupClick: Seperator NOT CLICKABLE!!!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    move v0, v1

    .line 165
    :goto_50
    return v0

    :cond_51
    const/4 v0, 0x0

    goto :goto_50
.end method

.method public onGroupCollapse(I)V
    .registers 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGroupCollapse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onGroupExpand(I)V
    .registers 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGroupExpand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onPageUnSelected()V
    .registers 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->onPageUnSelected()V

    .line 190
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->collapseGroupAll(Landroid/widget/ExpandableListView;)V

    .line 191
    return-void
.end method

.method public onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V
    .registers 3
    .param p1, "isSelected"    # Z
    .param p2, "param"    # Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/ListFragment;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    .line 84
    return-void
.end method

.method setListAdapter(Landroid/view/View;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v13, 0x7f0f0130

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 34
    const v0, 0x7f1000aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    .line 36
    sget-object v0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f4

    .line 66
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->setListAdapter(Landroid/view/View;)V

    .line 69
    :goto_24
    return-void

    .line 40
    :pswitch_25
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->getChildPageInfo(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    .line 41
    .local v4, "child":Lcom/pantech/app/music/list/PageInfoType;
    new-instance v0, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v2, Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v5

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v6

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getExpandableAdapterOption()I

    move-result v7

    iget-object v10, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mCursorLock:Ljava/lang/Object;

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v0 .. v10}, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListView;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/PageInfoType;IIILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v1, Lcom/pantech/app/music/list/adapter/SeparaterExpandableAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 43
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, v11}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setFastScrollIncludeChildview(Landroid/widget/AbsListView;Z)V

    .line 47
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 50
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 52
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getExpandableAdapterOption()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_ec

    .line 53
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v11}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    .line 57
    :goto_ac
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 59
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 60
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->registerViewHierachyChangeListener(Landroid/widget/AbsListView;)V

    goto/16 :goto_24

    .line 55
    :cond_ec
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    invoke-interface {v0, v11, v12}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    goto :goto_ac

    .line 36
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method
