.class Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;
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
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V
    .registers 2

    .prologue
    .line 2116
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1500(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V

    .line 2121
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1602(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)Z

    .line 2122
    return-void
.end method
