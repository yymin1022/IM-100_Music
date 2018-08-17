.class Lcom/pantech/app/music/list/module/FindMostColor$RGB;
.super Ljava/lang/Object;
.source "FindMostColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/FindMostColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RGB"
.end annotation


# instance fields
.field blue:J

.field green:J

.field red:J

.field final synthetic this$0:Lcom/pantech/app/music/list/module/FindMostColor;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/module/FindMostColor;III)V
    .registers 7
    .param p2, "red"    # I
    .param p3, "blue"    # I
    .param p4, "green"    # I

    .prologue
    .line 26
    iput-object p1, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->this$0:Lcom/pantech/app/music/list/module/FindMostColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    .line 28
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    .line 29
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    .line 30
    return-void
.end method


# virtual methods
.method public isSimilarColor(III)Z
    .registers 10
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    const-wide/16 v4, 0xf

    .line 34
    iget-wide v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1c

    iget-wide v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    int-to-long v2, p2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1c

    iget-wide v0, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1c

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->red:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->green:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pantech/app/music/list/module/FindMostColor$RGB;->blue:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
