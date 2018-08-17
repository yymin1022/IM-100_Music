.class Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;
.super Ljava/lang/Object;
.source "SettingTabListDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SettingTabListDialogFragment;->getSelectAndArrangeDialog()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

.field final synthetic val$tabSelectListadapter:Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SettingTabListDialogFragment;Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;)V
    .registers 3

    .prologue
    .line 187
    iput-object p1, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    iput-object p2, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;->val$tabSelectListadapter:Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v1, "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;->val$tabSelectListadapter:Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;

    invoke-virtual {v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->getCount()I

    move-result v4

    .line 196
    .local v4, "listCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v4, :cond_40

    .line 198
    iget-object v5, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;->val$tabSelectListadapter:Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;

    invoke-virtual {v5, v2}, Lcom/pantech/app/music/view/SettingTabListDialogFragment$SettingTabListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 201
    .local v0, "c":Landroid/database/Cursor;
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 202
    .local v3, "id":I
    iget-object v5, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    invoke-static {v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->access$000(Lcom/pantech/app/music/view/SettingTabListDialogFragment;)Ljava/util/Hashtable;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_3d

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 208
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "id":I
    :cond_40
    iget-object v5, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    invoke-static {v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->access$100(Lcom/pantech/app/music/view/SettingTabListDialogFragment;)Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 209
    iget-object v5, p0, Lcom/pantech/app/music/view/SettingTabListDialogFragment$2;->this$0:Lcom/pantech/app/music/view/SettingTabListDialogFragment;

    invoke-static {v5}, Lcom/pantech/app/music/view/SettingTabListDialogFragment;->access$100(Lcom/pantech/app/music/view/SettingTabListDialogFragment;)Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;

    move-result-object v5

    const/4 v6, -0x1

    invoke-interface {v5, v6, v1}, Lcom/pantech/app/music/view/SettingTabListDialogFragment$onPressedButtonListener;->setOnButtonClickListener(ILjava/util/ArrayList;)V

    .line 210
    :cond_52
    return-void
.end method
