.class public Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;
.super Ljava/lang/Object;
.source "SkyEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/view/SkyEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UndoStateOfSkyEditText"
.end annotation


# instance fields
.field public text:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/app/music/view/SkyEditText;

.field public visible:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 2

    .prologue
    .line 406
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
