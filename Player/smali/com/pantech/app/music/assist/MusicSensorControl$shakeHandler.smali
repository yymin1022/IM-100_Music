.class Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;
.super Landroid/os/Handler;
.source "MusicSensorControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/assist/MusicSensorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "shakeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicSensorControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/assist/MusicSensorControl;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_116

    .line 258
    :cond_7
    :goto_7
    return-void

    .line 193
    :pswitch_8
    const/4 v6, 0x0

    .line 194
    .local v6, "condition":Z
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$000(Lcom/pantech/app/music/assist/MusicSensorControl;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 195
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$100(Lcom/pantech/app/music/assist/MusicSensorControl;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.pantech.weather"

    aput-object v4, v1, v3

    const-string v3, "com.android.email"

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v4, "com.android.calendar"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "com.pantech.app.movie"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "com.pantech.app.mms"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "com.android.gallery3d"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/ActivityUtils;->isAppsForeground(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v6, v0

    .line 201
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$100(Lcom/pantech/app/music/assist/MusicSensorControl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isPureCallState(Landroid/content/Context;)Z

    move-result v0

    or-int/2addr v6, v0

    .line 203
    if-eq v6, v5, :cond_7

    .line 208
    :cond_49
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$100(Lcom/pantech/app/music/assist/MusicSensorControl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.pantech.app.skypen"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/ActivityUtils;->isAppForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 209
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$100(Lcom/pantech/app/music/assist/MusicSensorControl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$200()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 210
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_87

    .line 211
    const/4 v8, 0x0

    .line 212
    .local v8, "val":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_82

    .line 213
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    const-string v0, "shake"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 216
    :cond_82
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 217
    if-gtz v8, :cond_7

    .line 223
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "val":I
    :cond_87
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$100(Lcom/pantech/app/music/assist/MusicSensorControl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.pantech.app.skypen_extend"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/ActivityUtils;->isAppForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 224
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$100(Lcom/pantech/app/music/assist/MusicSensorControl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$300()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 225
    .restart local v7    # "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_c5

    .line 226
    const/4 v8, 0x0

    .line 227
    .restart local v8    # "val":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c0

    .line 228
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    const-string v0, "shake"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 231
    :cond_c0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 232
    if-gtz v8, :cond_7

    .line 238
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "val":I
    :cond_c5
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$100(Lcom/pantech/app/music/assist/MusicSensorControl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.pantech.app.skyquicknote"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/ActivityUtils;->isAppForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 239
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$100(Lcom/pantech/app/music/assist/MusicSensorControl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$400()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 240
    .restart local v7    # "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_103

    .line 241
    const/4 v8, 0x0

    .line 242
    .restart local v8    # "val":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_fe

    .line 243
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    const-string v0, "shake"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 246
    :cond_fe
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 247
    if-gtz v8, :cond_7

    .line 253
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "val":I
    :cond_103
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$500(Lcom/pantech/app/music/assist/MusicSensorControl;)Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$500(Lcom/pantech/app/music/assist/MusicSensorControl;)Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;->onShake()V

    goto/16 :goto_7

    .line 189
    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
