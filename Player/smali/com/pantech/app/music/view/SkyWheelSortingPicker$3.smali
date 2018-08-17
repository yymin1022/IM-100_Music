.class Lcom/pantech/app/music/view/SkyWheelSortingPicker$3;
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
    .line 152
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$3;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;II)V
    .registers 5
    .param p1, "spinner"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$3;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->access$000(Lcom/pantech/app/music/view/SkyWheelSortingPicker;)V

    .line 155
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPicker$3;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-virtual {v0, p3}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setCurrentSubType(I)V

    .line 156
    return-void
.end method
