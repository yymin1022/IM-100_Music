.class Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;
.super Ljava/lang/Object;
.source "LGUDRMHiddenActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;->this$0:Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v4, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;->this$0:Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;

    iget-object v5, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;->this$0:Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;

    const-string v6, "DrmServerPreference"

    invoke-virtual {v5, v6, v3}, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->access$002(Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 48
    iget-object v4, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;->this$0:Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;

    invoke-static {v4}, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->access$000(Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, "cur_server":Landroid/content/SharedPreferences$Editor;
    if-gez p3, :cond_6e

    move p3, v3

    .line 50
    :cond_1b
    :goto_1b
    const-string v3, "DrmServerIndex"

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    const-string v3, "DRM_SERVER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Change DRM_SERVER : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;->this$0:Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "server_str":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;->this$0:Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;

    invoke-virtual {v4}, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;->this$0:Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;

    invoke-static {v3, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void

    .line 49
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "server_str":[Ljava/lang/String;
    :cond_6e
    const/4 v4, 0x2

    if-le p3, v4, :cond_1b

    move p3, v3

    goto :goto_1b
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 61
    return-void
.end method
