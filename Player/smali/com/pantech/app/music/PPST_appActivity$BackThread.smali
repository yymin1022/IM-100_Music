.class Lcom/pantech/app/music/PPST_appActivity$BackThread;
.super Ljava/lang/Thread;
.source "PPST_appActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/PPST_appActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/PPST_appActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/PPST_appActivity;)V
    .registers 2

    .prologue
    .line 294
    iput-object p1, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 296
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v0, v4, v5}, Lcom/pantech/app/music/PPST_appActivity;->access$002(Lcom/pantech/app/music/PPST_appActivity;J)J

    .line 297
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    const-string v1, "Fail"

    invoke-static {v0, v1}, Lcom/pantech/app/music/PPST_appActivity;->access$102(Lcom/pantech/app/music/PPST_appActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity;->access$300(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v1}, Lcom/pantech/app/music/PPST_appActivity;->access$200(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 300
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity;->access$400(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 301
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity;->access$400(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/PPST_appActivity;->access$500(Lcom/pantech/app/music/PPST_appActivity;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/PPST_appActivity;->access$002(Lcom/pantech/app/music/PPST_appActivity;J)J

    .line 302
    :cond_39
    const-string v0, "PPST_FileCopy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get getTargetSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity;->access$000(Lcom/pantech/app/music/PPST_appActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    const-string v1, "getSize"

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity;->access$000(Lcom/pantech/app/music/PPST_appActivity;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/PPST_appActivity;->access$600(Lcom/pantech/app/music/PPST_appActivity;Ljava/lang/String;J)V

    .line 315
    :goto_64
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/PPST_appActivity;->finish()V

    .line 316
    return-void

    .line 304
    :cond_6a
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity;->access$300(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v1}, Lcom/pantech/app/music/PPST_appActivity;->access$700(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 305
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity;->access$400(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v0}, Lcom/pantech/app/music/PPST_appActivity;->access$800(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 306
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity;->access$400(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v3}, Lcom/pantech/app/music/PPST_appActivity;->access$800(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/PPST_appActivity;->access$900(Lcom/pantech/app/music/PPST_appActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/PPST_appActivity;->access$102(Lcom/pantech/app/music/PPST_appActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    :cond_a3
    const-string v0, "PPST_FileCopy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file_name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity;->access$400(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " //target_file_name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity;->access$800(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "PPST_FileCopy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get retrnString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v2}, Lcom/pantech/app/music/PPST_appActivity;->access$100(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    iget-object v1, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    invoke-static {v1}, Lcom/pantech/app/music/PPST_appActivity;->access$100(Lcom/pantech/app/music/PPST_appActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/pantech/app/music/PPST_appActivity;->access$600(Lcom/pantech/app/music/PPST_appActivity;Ljava/lang/String;J)V

    goto/16 :goto_64

    .line 311
    :cond_fc
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity$BackThread;->this$0:Lcom/pantech/app/music/PPST_appActivity;

    const-string v1, "Fail"

    invoke-static {v0, v1, v4, v5}, Lcom/pantech/app/music/PPST_appActivity;->access$600(Lcom/pantech/app/music/PPST_appActivity;Ljava/lang/String;J)V

    .line 312
    const-string v0, "PPST_FileCopy"

    const-string v1, "error in parsing \'PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION\' broad cast"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_64
.end method
