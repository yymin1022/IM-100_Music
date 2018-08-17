.class Lcom/pantech/app/music/service/MusicPlaybackControl$5;
.super Ljava/lang/Object;
.source "MusicPlaybackControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackControl;->verifyTracks(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V
    .registers 2

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1200(Lcom/pantech/app/music/service/MusicPlaybackControl;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1094
    :try_start_7
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1a

    .line 1095
    :cond_18
    monitor-exit v11

    .line 1152
    :goto_19
    return-void

    .line 1097
    :cond_1a
    const-string v0, "MusicPlaybackControl"

    const-string v1, "verifyTracks()-1"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->newArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1099
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1402(Lcom/pantech/app/music/service/MusicPlaybackControl;Z)Z

    .line 1103
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    .line 1104
    .local v10, "verifyDBTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/pantech/app/music/utils/ContentUtils;->getUri(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/pantech/app/music/utils/ContentUtils;->getColumns(Lcom/pantech/app/music/list/MusicItemInfo;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1105
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5f
    if-eqz v6, :cond_7e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_7e

    .line 1106
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1107
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    .line 1109
    :cond_7e
    if-eqz v6, :cond_83

    .line 1110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1113
    :cond_83
    const/4 v8, 0x0

    :goto_84
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1500(Lcom/pantech/app/music/service/MusicPlaybackControl;)I

    move-result v0

    if-ge v8, v0, :cond_176

    .line 1114
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    aget-object v0, v0, v8

    if-nez v0, :cond_99

    .line 1113
    :cond_96
    :goto_96
    add-int/lit8 v8, v8, 0x1

    goto :goto_84

    .line 1117
    :cond_99
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1400(Lcom/pantech/app/music/service/MusicPlaybackControl;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1118
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1402(Lcom/pantech/app/music/service/MusicPlaybackControl;Z)Z

    .line 1119
    const-string v0, "MusicPlaybackControl"

    const-string v1, "=>stop verifying caused by next request"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    monitor-exit v11

    goto/16 :goto_19

    .line 1151
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "i":I
    .end local v10    # "verifyDBTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_b1
    move-exception v0

    monitor-exit v11
    :try_end_b3
    .catchall {:try_start_7 .. :try_end_b3} :catchall_b1

    throw v0

    .line 1123
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "i":I
    .restart local v10    # "verifyDBTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_b4
    :try_start_b4
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-static {v0}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1125
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->newArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 1129
    :cond_d2
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 1131
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1132
    .local v9, "szPath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_96

    .line 1133
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 1135
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->newArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_96

    .line 1137
    :cond_120
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    aget-object v2, v2, v8

    iget-object v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no file + ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_96

    .line 1141
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "szPath":Ljava/lang/String;
    :cond_152
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    aget-object v2, v2, v8

    iget-object v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_96

    .line 1146
    :cond_176
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->newArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->access$1500(Lcom/pantech/app/music/service/MusicPlaybackControl;)I

    move-result v1

    if-ge v0, v1, :cond_198

    .line 1147
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1148
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$5;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1150
    :cond_198
    const-string v0, "MusicPlaybackControl"

    const-string v1, "verifyTracks()-2"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    monitor-exit v11
    :try_end_1a0
    .catchall {:try_start_b4 .. :try_end_1a0} :catchall_b1

    goto/16 :goto_19
.end method
