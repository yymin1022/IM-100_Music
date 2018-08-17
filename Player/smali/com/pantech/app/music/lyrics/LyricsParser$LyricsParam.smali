.class Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;
.super Ljava/lang/Object;
.source "LyricsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/lyrics/LyricsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricsParam"
.end annotation


# instance fields
.field listener:Lcom/pantech/app/music/lyrics/ILyricsParserListener;

.field path:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/app/music/lyrics/LyricsParser;


# direct methods
.method private constructor <init>(Lcom/pantech/app/music/lyrics/LyricsParser;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;->this$0:Lcom/pantech/app/music/lyrics/LyricsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/lyrics/LyricsParser;Lcom/pantech/app/music/lyrics/LyricsParser$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/music/lyrics/LyricsParser;
    .param p2, "x1"    # Lcom/pantech/app/music/lyrics/LyricsParser$1;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;-><init>(Lcom/pantech/app/music/lyrics/LyricsParser;)V

    return-void
.end method
