.class Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mDeleteSearchHistroyBtn:Landroid/widget/ImageButton;

.field mSearchTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$ViewHolder;->this$0:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
