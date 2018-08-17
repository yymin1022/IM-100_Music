.class Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;
.super Ljava/lang/Object;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteHistoryParam"
.end annotation


# instance fields
.field mSearchHistoryID:I

.field mSearchTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;Ljava/lang/String;I)V
    .registers 4
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;->this$0:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;->mSearchTitle:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter$DeleteHistoryParam;->mSearchHistoryID:I

    .line 54
    return-void
.end method
