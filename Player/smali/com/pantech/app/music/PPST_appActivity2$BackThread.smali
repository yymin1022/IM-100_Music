.class Lcom/pantech/app/music/PPST_appActivity2$BackThread;
.super Ljava/lang/Thread;
.source "PPST_appActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/PPST_appActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/PPST_appActivity2;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/PPST_appActivity2;)V
    .registers 2

    .prologue
    .line 293
    iput-object p1, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 295
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v0, v4, v5}, Lcom/pantech/app/music/PPST_appActivity2;->access$002(Lcom/pantech/app/music/PPST_appActivity2;J)J

    .line 296
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    const-string v1, "Fail"

    invoke-static {v0, v1}, Lcom/pantech/app/music/PPST_appActivity2;->access$102(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity2;->access$300(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v1}, Lcom/pantech/app/music/PPST_appActivity2;->access$200(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 299
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity2;->access$400(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 300
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity2;->access$400(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/PPST_appActivity2;->access$500(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/PPST_appActivity2;->access$002(Lcom/pantech/app/music/PPST_appActivity2;J)J

    .line 301
    :cond_39
    const-string v0, "PPST_FileCopy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get getTargetSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity2;->access$000(Lcom/pantech/app/music/PPST_appActivity2;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    const-string v1, "getSize"

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity2;->access$000(Lcom/pantech/app/music/PPST_appActivity2;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/PPST_appActivity2;->access$600(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;J)V

    .line 314
    :goto_64
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-virtual {v0}, Lcom/pantech/app/music/PPST_appActivity2;->finish()V

    .line 315
    return-void

    .line 303
    :cond_6a
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity2;->access$300(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v1}, Lcom/pantech/app/music/PPST_appActivity2;->access$700(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 304
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity2;->access$400(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity2;->access$800(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 305
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity2;->access$400(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v3}, Lcom/pantech/app/music/PPST_appActivity2;->access$800(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/PPST_appActivity2;->access$900(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/PPST_appActivity2;->access$102(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    :cond_a3
    const-string v0, "PPST_FileCopy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file_name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity2;->access$400(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " //target_file_name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity2;->access$800(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "PPST_FileCopy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get retrnString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity2;->access$100(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    invoke-static {v1}, Lcom/pantech/app/music/PPST_appActivity2;->access$100(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/pantech/app/music/PPST_appActivity2;->access$600(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;J)V

    goto/16 :goto_64

    .line 310
    :cond_fc
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity2;

    const-string v1, "Fail"

    invoke-static {v0, v1, v4, v5}, Lcom/pantech/app/music/PPST_appActivity2;->access$600(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;J)V

    .line 311
    const-string v0, "PPST_FileCopy"

    const-string v1, "error in parsing \'PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION\' broad cast"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_64
.end method
