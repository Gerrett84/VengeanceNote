.class public Lcom/android/settings/aV;
.super Landroid/os/Binder;
.source "VirusScanService.java"


# instance fields
.field final synthetic bD:Lcom/android/settings/VirusScanService;


# direct methods
.method public constructor <init>(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public P(I)Lcom/android/settings/dM;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dM;

    return-object v0
.end method

.method public Q(I)I
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->h(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/settings/aj;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0, p1}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;Lcom/android/settings/aj;)Lcom/android/settings/aj;

    .line 86
    return-void
.end method

.method public c(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dM;

    .line 94
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/settings/ScanState;->bM:Lcom/android/settings/ScanState;

    iget-object v2, v0, Lcom/android/settings/dM;->cX:Lcom/android/settings/ScanState;

    if-ne v1, v2, :cond_0

    .line 95
    if-eqz p2, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v1}, Lcom/android/settings/VirusScanService;->d(Lcom/android/settings/VirusScanService;)I

    .line 99
    :goto_0
    iput-boolean p2, v0, Lcom/android/settings/dM;->mChecked:Z

    .line 101
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v1}, Lcom/android/settings/VirusScanService;->e(Lcom/android/settings/VirusScanService;)I

    goto :goto_0
.end method

.method public ek()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public el()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->b(Lcom/android/settings/VirusScanService;)Z

    move-result v0

    return v0
.end method

.method public em()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->c(Lcom/android/settings/VirusScanService;)V

    .line 90
    return-void
.end method

.method public en()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->f(Lcom/android/settings/VirusScanService;)V

    .line 105
    return-void
.end method

.method public eo()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->g(Lcom/android/settings/VirusScanService;)I

    move-result v0

    return v0
.end method

.method public ep()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->h(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public eq()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->i(Lcom/android/settings/VirusScanService;)I

    move-result v0

    return v0
.end method

.method public er()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    invoke-static {v0}, Lcom/android/settings/VirusScanService;->j(Lcom/android/settings/VirusScanService;)I

    move-result v0

    return v0
.end method

.method public es()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/VirusScanService;->a(Lcom/android/settings/VirusScanService;Z)Z

    .line 129
    return-void
.end method

.method public et()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/aV;->bD:Lcom/android/settings/VirusScanService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/VirusScanService;->b(Lcom/android/settings/VirusScanService;Z)Z

    .line 133
    return-void
.end method
