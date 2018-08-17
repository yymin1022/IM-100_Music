.class Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V
    .registers 2

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2081
    invoke-direct {p0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .registers 2
    .param p1, "increment"    # Z

    .prologue
    .line 2085
    iput-boolean p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2086
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1300(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)V

    .line 2091
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1400(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2092
    return-void
.end method
