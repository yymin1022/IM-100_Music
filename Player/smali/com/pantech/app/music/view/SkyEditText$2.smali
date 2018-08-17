.class Lcom/pantech/app/music/view/SkyEditText$2;
.super Ljava/lang/Object;
.source "SkyEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SkyEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyEditText;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyEditText$2;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText$2;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyEditText;->access$200(Lcom/pantech/app/music/view/SkyEditText;)V

    .line 180
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText$2;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyEditText;->access$300(Lcom/pantech/app/music/view/SkyEditText;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyEditText$2;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyEditText;->access$400(Lcom/pantech/app/music/view/SkyEditText;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    return-void
.end method
