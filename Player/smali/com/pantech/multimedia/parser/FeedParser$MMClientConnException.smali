.class public Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;
.super Ljava/lang/Exception;
.source "FeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/parser/FeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MMClientConnException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2b3f91e48296eb22L


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/parser/FeedParser;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/parser/FeedParser;Ljava/lang/String;)V
    .registers 3
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;->this$0:Lcom/pantech/multimedia/parser/FeedParser;

    .line 84
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
