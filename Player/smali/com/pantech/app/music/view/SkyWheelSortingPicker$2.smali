.class Lcom/pantech/app/music/view/SkyWheelSortingPicker$2;
.super Ljava/lang/Object;
.source "SkyWheelSortingPicker.java"

# interfaces
.implements Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SkyWheelSortingPicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyWheelSortingPicker;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyWheelSortingPicker;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$2;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;II)V
    .registers 7
    .param p1, "picker"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 131
    const-string v0, "SkyWheelSortingPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChange : oldVal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newVal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$2;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->access$000(Lcom/pantech/app/music/view/SkyWheelSortingPicker;)V

    .line 133
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$2;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-virtual {v0, p3}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setCurrentMainType(I)V

    .line 134
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$2;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-static {v0, p3}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->access$100(Lcom/pantech/app/music/view/SkyWheelSortingPicker;I)V

    .line 135
    return-void
.end method
