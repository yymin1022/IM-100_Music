.class Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SettingTabListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/view/SettingTabListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingTabListAdapter"
.end annotation


# instance fields
.field dialogType:I

.field rowResourceID:I

.field final synthetic this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/view/SettingTabListDialogFragment;Landroid/content/Context;Landroid/database/Cursor;ZI)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "autoRequery"    # Z
    .param p5, "dialogType"    # I

    .prologue
    const v0, 0x7f03008e

    .line 310
    iput-object p1, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    .line 311
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 312
    iput p5, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->dialogType:I

    .line 313
    packed-switch p5, :pswitch_data_14

    .line 316
    iput v0, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->rowResourceID:I

    .line 318
    :goto_f
    return-void

    .line 315
    :pswitch_10
    iput v0, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->rowResourceID:I

    goto :goto_f

    .line 313
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;

    .line 348
    .local v2, "vh":Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;
    iget v3, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->dialogType:I

    if-ne v3, v5, :cond_64

    .line 350
    iget-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->tv:Landroid/widget/TextView;

    const-string v4, "_tabname"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->cBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 353
    iget-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->cBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 355
    const-string v3, "_id"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 356
    .local v0, "_id":I
    iget-object v3, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    invoke-static {v3}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->access$000(Lcom/pantech/app/music/view/SettingTabListDialogFragment;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 358
    .local v1, "isItemChecked":I
    if-nez v1, :cond_65

    .line 359
    iget-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->cBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 363
    :goto_4a
    iget-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->cBox:Landroid/widget/CheckBox;

    const-string v4, "_id"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 364
    iget-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->cBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 366
    .end local v0    # "_id":I
    .end local v1    # "isItemChecked":I
    :cond_64
    return-void

    .line 361
    .restart local v0    # "_id":I
    .restart local v1    # "isItemChecked":I
    :cond_65
    iget-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->cBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4a
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 323
    iget-object v3, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 324
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->rowResourceID:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 326
    .local v1, "v":Landroid/view/View;
    new-instance v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;

    iget-object v3, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    invoke-direct {v2, v3}, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;-><init>(Lcom/pantech/app/music/view/SettingTabListDialogFragment;)V

    .line 327
    .local v2, "vh":Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 329
    iget v3, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->dialogType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_53

    .line 331
    const v3, 0x7f1000f3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->tv:Landroid/widget/TextView;

    .line 332
    const v3, 0x7f100141

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->cBox:Landroid/widget/CheckBox;

    .line 334
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isWhiteTheme()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 336
    iget-object v3, v2, Lcom/pantech/app/music/view/SettingTabListDialogFragment$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    invoke-virtual {v4}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    :cond_53
    return-object v1
.end method
