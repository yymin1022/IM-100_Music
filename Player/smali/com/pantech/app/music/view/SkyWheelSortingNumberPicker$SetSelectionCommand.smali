.class Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "SkyWheelSortingNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V
    .registers 2

    .prologue
    .line 2051
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2051
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$202(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2051
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2058
    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1200(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_d

    .line 2075
    :cond_c
    :goto_c
    return-void

    .line 2062
    :cond_d
    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1200(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2065
    .local v0, "len":I
    if-lez v0, :cond_c

    .line 2069
    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->mSelectionStart:I

    if-lt v0, v2, :cond_29

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    if-ge v0, v2, :cond_2e

    .line 2070
    :cond_29
    const/4 v2, 0x0

    iput v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 2071
    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 2074
    :cond_2e
    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1200(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_c
.end method
