.class Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .registers 11
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    const/4 v7, 0x1

    const/16 v8, 0x1f4

    .line 100
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v4, v4, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v5, v5, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedParentList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v2

    .line 102
    .local v2, "selectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v4, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1$1;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;)V

    invoke-static {v2, v7, v4}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedUriLists(Ljava/util/Collection;ZLcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;)Ljava/util/ArrayList;

    move-result-object v3

    .line 111
    .local v3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v3, :cond_38

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createBeamUris() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 114
    :cond_38
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_42

    .line 116
    :cond_40
    const/4 v4, 0x0

    .line 132
    :goto_41
    return-object v4

    .line 118
    :cond_42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v8, :cond_8a

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4e
    if-ge v0, v8, :cond_5a

    .line 123
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 126
    :cond_5a
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0800e0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/Uri;

    goto :goto_41

    .line 132
    .end local v0    # "i":I
    .end local v1    # "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/Uri;

    goto :goto_41
.end method
