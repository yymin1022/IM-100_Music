.class public Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;
.super Landroid/app/Activity;
.source "LGUDRMHiddenActivity.java"


# static fields
.field public static final DRM_PREFERENCE:Ljava/lang/String; = "DrmServerPreference"

.field public static final DRM_SERVER_IDX:Ljava/lang/String; = "DrmServerIndex"


# instance fields
.field private drmspinner_listerner:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity$1;-><init>(Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->drmspinner_listerner:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->sharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$002(Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->sharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v4, 0x7f03003f

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->setContentView(I)V

    .line 32
    const v4, 0x7f1000be

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 33
    .local v2, "serverlist":Landroid/widget/Spinner;
    const v4, 0x7f0c0001

    const v5, 0x1090008

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 34
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 35
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 36
    iget-object v4, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->drmspinner_listerner:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 38
    const-string v4, "DrmServerPreference"

    invoke-virtual {p0, v4, v3}, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 39
    iget-object v4, p0, Lcom/pantech/app/music/drm/LGUDRMHiddenActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v5, "DrmServerIndex"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, "server_idx":I
    if-gez v1, :cond_42

    move v1, v3

    .line 41
    :cond_3e
    :goto_3e
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 42
    return-void

    .line 40
    :cond_42
    const/4 v4, 0x2

    if-le v1, v4, :cond_3e

    move v1, v3

    goto :goto_3e
.end method
