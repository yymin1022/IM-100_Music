.class Lcom/pantech/app/music/list/component/view/TabLayoutCustom$2;
.super Ljava/lang/Object;
.source "TabLayoutCustom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->createTabView(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)V
    .registers 2

    .prologue
    .line 494
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$2;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 497
    move-object v0, p1

    check-cast v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;

    .line 498
    .local v0, "tabView":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;
    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->getTab()Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->select()V

    .line 499
    return-void
.end method
