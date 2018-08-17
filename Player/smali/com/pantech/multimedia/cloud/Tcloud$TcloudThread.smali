.class Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;
.super Ljava/lang/Thread;
.source "Tcloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/cloud/Tcloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcloudThread"
.end annotation


# instance fields
.field requestType:I

.field tagId:I

.field final synthetic this$0:Lcom/pantech/multimedia/cloud/Tcloud;


# direct methods
.method constructor <init>(Lcom/pantech/multimedia/cloud/Tcloud;I)V
    .registers 3
    .param p2, "type"    # I

    .prologue
    .line 342
    iput-object p1, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    .line 340
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 341
    iput p2, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->requestType:I

    return-void
.end method

.method constructor <init>(Lcom/pantech/multimedia/cloud/Tcloud;II)V
    .registers 4
    .param p2, "type"    # I
    .param p3, "id"    # I

    .prologue
    .line 347
    iput-object p1, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    .line 344
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 345
    iput p2, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->requestType:I

    .line 346
    iput p3, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->tagId:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 352
    monitor-enter p0

    .line 353
    :try_start_1
    iget v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->requestType:I

    packed-switch v0, :pswitch_data_8a

    .line 352
    :pswitch_6
    monitor-exit p0

    .line 394
    :goto_7
    return-void

    .line 355
    :pswitch_8
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$0(Lcom/pantech/multimedia/cloud/Tcloud;)Z

    .line 356
    monitor-exit p0

    goto :goto_7

    .line 352
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    .line 358
    :pswitch_12
    :try_start_12
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$1(Lcom/pantech/multimedia/cloud/Tcloud;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 359
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$2(Lcom/pantech/multimedia/cloud/Tcloud;)V

    .line 364
    :cond_1f
    :goto_1f
    monitor-exit p0

    goto :goto_7

    .line 361
    :cond_21
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$0(Lcom/pantech/multimedia/cloud/Tcloud;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 362
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$2(Lcom/pantech/multimedia/cloud/Tcloud;)V

    goto :goto_1f

    .line 366
    :pswitch_2f
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$1(Lcom/pantech/multimedia/cloud/Tcloud;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 367
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$3(Lcom/pantech/multimedia/cloud/Tcloud;)V

    .line 372
    :cond_3c
    :goto_3c
    monitor-exit p0

    goto :goto_7

    .line 369
    :cond_3e
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$0(Lcom/pantech/multimedia/cloud/Tcloud;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 370
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$3(Lcom/pantech/multimedia/cloud/Tcloud;)V

    goto :goto_3c

    .line 374
    :pswitch_4c
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$1(Lcom/pantech/multimedia/cloud/Tcloud;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 375
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$4(Lcom/pantech/multimedia/cloud/Tcloud;)V

    .line 380
    :cond_59
    :goto_59
    monitor-exit p0

    goto :goto_7

    .line 377
    :cond_5b
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$0(Lcom/pantech/multimedia/cloud/Tcloud;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 378
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$4(Lcom/pantech/multimedia/cloud/Tcloud;)V

    goto :goto_59

    .line 382
    :pswitch_69
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$1(Lcom/pantech/multimedia/cloud/Tcloud;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 383
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    iget v1, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->tagId:I

    invoke-static {v0, v1}, Lcom/pantech/multimedia/cloud/Tcloud;->access$5(Lcom/pantech/multimedia/cloud/Tcloud;I)V

    .line 388
    :cond_78
    :goto_78
    monitor-exit p0

    goto :goto_7

    .line 385
    :cond_7a
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    invoke-static {v0}, Lcom/pantech/multimedia/cloud/Tcloud;->access$0(Lcom/pantech/multimedia/cloud/Tcloud;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 386
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->this$0:Lcom/pantech/multimedia/cloud/Tcloud;

    iget v1, p0, Lcom/pantech/multimedia/cloud/Tcloud$TcloudThread;->tagId:I

    invoke-static {v0, v1}, Lcom/pantech/multimedia/cloud/Tcloud;->access$5(Lcom/pantech/multimedia/cloud/Tcloud;I)V
    :try_end_89
    .catchall {:try_start_12 .. :try_end_89} :catchall_f

    goto :goto_78

    .line 353
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
        :pswitch_2f
        :pswitch_4c
        :pswitch_6
        :pswitch_69
    .end packed-switch
.end method
