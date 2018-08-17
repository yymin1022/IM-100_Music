.class Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;
.super Landroid/os/Handler;
.source "LyricsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/lyrics/LyricsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricsParserHandler"
.end annotation


# static fields
.field public static final MSG_START_PARSE:I = 0x1


# instance fields
.field private mParser:Lcom/pantech/audiotag/AudioFile;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    new-instance v0, Lcom/pantech/audiotag/AudioFile;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/pantech/audiotag/AudioFile;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    .line 157
    return-void
.end method

.method private saveLyricsIntoCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 184
    if-nez p2, :cond_c

    .line 185
    invoke-static {}, Lcom/pantech/app/music/lyrics/LyricsParser;->access$100()Lcom/pantech/app/music/lyrics/LyricsCacheMap;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/lyrics/LyricsParser;->NO_LYRICS:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/music/lyrics/LyricsCacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_b
    return-void

    .line 187
    :cond_c
    invoke-static {}, Lcom/pantech/app/music/lyrics/LyricsParser;->access$100()Lcom/pantech/app/music/lyrics/LyricsCacheMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/lyrics/LyricsCacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_54

    .line 180
    :goto_8
    return-void

    .line 168
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;

    .line 169
    .local v0, "param":Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;
    iget-object v2, p0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    iget-object v3, v0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pantech/audiotag/AudioFile;->setFileType(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    iget-object v3, v0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pantech/audiotag/AudioFile;->doReadProcess(Ljava/lang/String;)V

    .line 171
    const-string v2, "VMusicLyrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    invoke-virtual {v4}, Lcom/pantech/audiotag/AudioFile;->getResultCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    iget-object v3, v0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pantech/audiotag/AudioFile;->getUnSyncLyrics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "result":Ljava/lang/String;
    iget-object v2, v0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;->listener:Lcom/pantech/app/music/lyrics/ILyricsParserListener;

    invoke-interface {v2, v1}, Lcom/pantech/app/music/lyrics/ILyricsParserListener;->onLyricsParseEnd(Ljava/lang/String;)V

    .line 175
    const-string v2, "VMusicLyrics"

    const-string v3, "PARSING END"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v2, v0, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;->path:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;->saveLyricsIntoCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 165
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
