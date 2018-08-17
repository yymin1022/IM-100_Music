.class Lcom/pantech/app/music/list/component/ActionModeCommandBar$2;
.super Ljava/lang/Object;
.source "ActionModeCommandBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/component/ActionModeCommandBar;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/component/ActionModeCommandBar;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/ActionModeCommandBar;)V
    .registers 2

    .prologue
    .line 439
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ActionModeCommandBar$2;->this$0:Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 2
    .param p1, "popupMenu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 442
    return-void
.end method
