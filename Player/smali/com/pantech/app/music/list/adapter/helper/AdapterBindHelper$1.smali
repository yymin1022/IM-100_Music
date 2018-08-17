.class Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;
.super Ljava/lang/Object;
.source "AdapterBindHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;->this$0:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    const v2, 0x7f100010

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    .local v0, "albumID":I
    const v2, 0x7f100011

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 202
    .local v1, "artistID":I
    new-instance v2, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1$1;-><init>(Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper$1;II)V

    const-wide/16 v4, 0x64

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    return-void
.end method
