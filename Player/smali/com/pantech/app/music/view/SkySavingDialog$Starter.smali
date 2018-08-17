.class Lcom/pantech/app/music/view/SkySavingDialog$Starter;
.super Ljava/lang/Object;
.source "SkySavingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/view/SkySavingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Starter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkySavingDialog;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkySavingDialog;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/pantech/app/music/view/SkySavingDialog$Starter;->this$0:Lcom/pantech/app/music/view/SkySavingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_13

    .line 126
    iget-object v1, p0, Lcom/pantech/app/music/view/SkySavingDialog$Starter;->this$0:Lcom/pantech/app/music/view/SkySavingDialog;

    invoke-static {v1}, Lcom/pantech/app/music/view/SkySavingDialog;->access$000(Lcom/pantech/app/music/view/SkySavingDialog;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_13
    return-void
.end method
