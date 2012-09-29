.class Lcom/android/settings/F;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "VirusScanService.java"


# instance fields
.field final synthetic bD:Lcom/android/settings/VirusScanService;


# direct methods
.method private constructor <init>(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/VirusScanService;Lcom/android/settings/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/F;-><init>(Lcom/android/settings/VirusScanService;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 142
    :goto_0
    if-ge v2, v3, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dM;

    .line 144
    iget-object v4, v0, Lcom/android/settings/dM;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    sget-object v3, Lcom/android/settings/ScanState;->bN:Lcom/android/settings/ScanState;

    iput-object v3, v0, Lcom/android/settings/dM;->cX:Lcom/android/settings/ScanState;

    .line 146
    iget-object v0, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->k(Lcom/android/settings/VirusScanService;)I

    .line 147
    iget-object v0, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->e(Lcom/android/settings/VirusScanService;)I

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->h(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->h(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->h(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings/F;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/settings/aj;->o(I)V

    .line 160
    :cond_1
    return-void

    .line 148
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 142
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method
