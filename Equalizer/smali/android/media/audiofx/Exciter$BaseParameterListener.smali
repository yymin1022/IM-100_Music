.class Landroid/media/audiofx/Exciter$BaseParameterListener;
.super Ljava/lang/Object;
.source "Exciter.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Exciter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/Exciter;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/Exciter;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Landroid/media/audiofx/Exciter$BaseParameterListener;->this$0:Landroid/media/audiofx/Exciter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/Exciter;Landroid/media/audiofx/Exciter$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/audiofx/Exciter;
    .param p2, "x1"    # Landroid/media/audiofx/Exciter$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Landroid/media/audiofx/Exciter$BaseParameterListener;-><init>(Landroid/media/audiofx/Exciter;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 12
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "l":Landroid/media/audiofx/Exciter$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/Exciter$BaseParameterListener;->this$0:Landroid/media/audiofx/Exciter;

    invoke-static {v3}, Landroid/media/audiofx/Exciter;->access$000(Landroid/media/audiofx/Exciter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 169
    :try_start_a
    iget-object v3, p0, Landroid/media/audiofx/Exciter$BaseParameterListener;->this$0:Landroid/media/audiofx/Exciter;

    invoke-static {v3}, Landroid/media/audiofx/Exciter;->access$100(Landroid/media/audiofx/Exciter;)Landroid/media/audiofx/Exciter$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 170
    iget-object v3, p0, Landroid/media/audiofx/Exciter$BaseParameterListener;->this$0:Landroid/media/audiofx/Exciter;

    invoke-static {v3}, Landroid/media/audiofx/Exciter;->access$100(Landroid/media/audiofx/Exciter;)Landroid/media/audiofx/Exciter$OnParameterChangeListener;

    move-result-object v0

    .line 172
    :cond_18
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_3b

    .line 173
    if-eqz v0, :cond_3a

    .line 174
    const/4 v1, -0x1

    .line 175
    .local v1, "p":I
    const/4 v2, -0x1

    .line 177
    .local v2, "v":S
    array-length v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    .line 178
    iget-object v3, p0, Landroid/media/audiofx/Exciter$BaseParameterListener;->this$0:Landroid/media/audiofx/Exciter;

    invoke-virtual {v3, p3, v6}, Landroid/media/audiofx/Exciter;->byteArrayToInt([BI)I

    move-result v1

    .line 180
    :cond_27
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_31

    .line 181
    iget-object v3, p0, Landroid/media/audiofx/Exciter$BaseParameterListener;->this$0:Landroid/media/audiofx/Exciter;

    invoke-virtual {v3, p4, v6}, Landroid/media/audiofx/Exciter;->byteArrayToShort([BI)S

    move-result v2

    .line 183
    :cond_31
    if-eq v1, v5, :cond_3a

    if-eq v2, v5, :cond_3a

    .line 184
    iget-object v3, p0, Landroid/media/audiofx/Exciter$BaseParameterListener;->this$0:Landroid/media/audiofx/Exciter;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/Exciter$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Exciter;IIS)V

    .line 187
    .end local v1    # "p":I
    .end local v2    # "v":S
    :cond_3a
    return-void

    .line 172
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v3
.end method
