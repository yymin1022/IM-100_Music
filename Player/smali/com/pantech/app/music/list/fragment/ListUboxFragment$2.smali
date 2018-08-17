.class Lcom/pantech/app/music/list/fragment/ListUboxFragment$2;
.super Ljava/lang/Object;
.source "ListUboxFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/ListUboxFragment;->setUPlusBoxStoreView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 2

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1150
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1151
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "lg.uplusbox.intent.action.MUSIC_STORE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string v2, "extra_category_sequence"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1154
    :try_start_10
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_15} :catch_16

    .line 1158
    :goto_15
    return-void

    .line 1155
    :catch_16
    move-exception v0

    .line 1156
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "U+Box Activity Not Found!!"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    goto :goto_15
.end method
