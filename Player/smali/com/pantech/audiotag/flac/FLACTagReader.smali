.class public Lcom/pantech/audiotag/flac/FLACTagReader;
.super Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;
.source "FLACTagReader.java"


# static fields
.field public static final FLAC_TAG_NAME:Ljava/lang/String; = "fLaC"

.field public static final FLAC_TAG_NAME_LENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "[FLACTagReader] "


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/pantech/audiotag/editor/IAudioFileEditorListener;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "getType"    # I
    .param p3, "editorListener"    # Lcom/pantech/audiotag/editor/IAudioFileEditorListener;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;-><init>(Ljava/lang/String;ILcom/pantech/audiotag/editor/IAudioFileEditorListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagReader;->prepareProcess()V

    .line 41
    const/4 v0, 0x0

    .line 45
    .local v0, "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :try_start_5
    new-instance v1, Lcom/pantech/audiotag/AudioFileStream;

    invoke-direct {v1}, Lcom/pantech/audiotag/AudioFileStream;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b8
    .catchall {:try_start_5 .. :try_end_a} :catchall_b6

    .line 48
    .end local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .local v1, "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :try_start_a
    iget-object v6, p0, Lcom/pantech/audiotag/flac/FLACTagReader;->mPath:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/pantech/audiotag/common/util/GlobalUtil;->openFile(Ljava/lang/String;Lcom/pantech/audiotag/AudioFileStream;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 50
    const/16 v6, -0x1770

    invoke-virtual {p0, v6}, Lcom/pantech/audiotag/flac/FLACTagReader;->setCode(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_8d
    .catchall {:try_start_a .. :try_end_17} :catchall_ab

    .line 94
    if-eqz v1, :cond_1c

    .line 95
    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 98
    :cond_1c
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagReader;->endProcess()V

    move-object v0, v1

    .line 100
    .end local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :goto_20
    return-void

    .line 55
    .end local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :cond_21
    if-eqz v1, :cond_57

    .line 57
    const/4 v6, 0x4

    :try_start_24
    invoke-virtual {v1, v6}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v5

    .line 58
    .local v5, "tagNameByte":[B
    invoke-static {v5}, Lcom/pantech/audiotag/common/ByteOperation;->convertToString([B)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "tagName":Ljava/lang/String;
    if-eqz v4, :cond_36

    const-string v6, "fLaC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 62
    :cond_36
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[FLACTagReader] Error: FLAC TAG NAME>> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 63
    const/16 v6, -0xa

    invoke-virtual {p0, v6}, Lcom/pantech/audiotag/flac/FLACTagReader;->setCode(I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4d} :catch_8d
    .catchall {:try_start_24 .. :try_end_4d} :catchall_ab

    .line 94
    if-eqz v1, :cond_52

    .line 95
    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 98
    :cond_52
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagReader;->endProcess()V

    move-object v0, v1

    .line 64
    .end local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    goto :goto_20

    .line 69
    .end local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "tagNameByte":[B
    .restart local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :cond_57
    :try_start_57
    new-instance v3, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;

    invoke-direct {v3}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;-><init>()V

    .line 70
    .local v3, "flacMetadataBlock":Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;
    invoke-virtual {v3, v1}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;->doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z

    .line 73
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getFlacStreamInfoBlockEnable()Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 75
    iget v6, p0, Lcom/pantech/audiotag/flac/FLACTagReader;->mGetType:I

    if-ne v6, v7, :cond_84

    .line 76
    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;->getFLACReadedData()Lcom/pantech/audiotag/flac/data/FLACDataOld;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/pantech/audiotag/flac/FLACTagReader;->setResultData(ILjava/lang/Object;)V

    .line 81
    :goto_76
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/pantech/audiotag/flac/FLACTagReader;->setWriteType(I)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_7a} :catch_8d
    .catchall {:try_start_57 .. :try_end_7a} :catchall_ab

    .line 94
    :goto_7a
    if-eqz v1, :cond_7f

    .line 95
    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 98
    :cond_7f
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagReader;->endProcess()V

    move-object v0, v1

    .end local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    goto :goto_20

    .line 78
    .end local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :cond_84
    const/4 v6, 0x0

    :try_start_85
    invoke-virtual {v3}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;->getFLACReadedData()Lcom/pantech/audiotag/flac/data/FLACDataOld;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/pantech/audiotag/flac/FLACTagReader;->setResultData(ILjava/lang/Object;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8c} :catch_8d
    .catchall {:try_start_85 .. :try_end_8c} :catchall_ab

    goto :goto_76

    .line 86
    .end local v3    # "flacMetadataBlock":Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;
    :catch_8d
    move-exception v2

    move-object v0, v1

    .line 88
    .end local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_8f
    :try_start_8f
    const-string v6, "[FLACTagReader] FLAC Parsing error:"

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/pantech/audiotag/flac/FLACTagReader;->setCode(I)V
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_b6

    .line 94
    if-eqz v0, :cond_a0

    .line 95
    invoke-virtual {v0}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 98
    :cond_a0
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagReader;->endProcess()V

    goto/16 :goto_20

    .line 84
    .end local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v3    # "flacMetadataBlock":Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;
    :cond_a5
    const/4 v6, -0x1

    const/4 v7, 0x0

    :try_start_a7
    invoke-virtual {p0, v6, v7}, Lcom/pantech/audiotag/flac/FLACTagReader;->setResultData(ILjava/lang/Object;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_8d
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_7a

    .line 93
    .end local v3    # "flacMetadataBlock":Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;
    :catchall_ab
    move-exception v6

    move-object v0, v1

    .line 94
    .end local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :goto_ad
    if-eqz v0, :cond_b2

    .line 95
    invoke-virtual {v0}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 98
    :cond_b2
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagReader;->endProcess()V

    .line 99
    throw v6

    .line 93
    :catchall_b6
    move-exception v6

    goto :goto_ad

    .line 86
    :catch_b8
    move-exception v2

    goto :goto_8f
.end method

.method protected prepareProcess()V
    .registers 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->prepareProcess()V

    .line 32
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->resetValues()V

    .line 33
    return-void
.end method
