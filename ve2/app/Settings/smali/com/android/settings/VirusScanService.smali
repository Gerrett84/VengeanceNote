.class public Lcom/android/settings/VirusScanService;
.super Landroid/app/Service;
.source "VirusScanService.java"


# static fields
.field private static cM:Z


# instance fields
.field private wA:Z

.field private ws:Ljava/util/ArrayList;

.field private wt:Ljava/util/ArrayList;

.field private wu:Lcom/android/settings/aV;

.field private wv:Lcom/android/settings/aj;

.field private ww:I

.field private wx:I

.field private wy:I

.field private wz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/VirusScanService;->cM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VirusScanService;->ws:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VirusScanService;->wt:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/android/settings/aV;

    invoke-direct {v0, p0}, Lcom/android/settings/aV;-><init>(Lcom/android/settings/VirusScanService;)V

    iput-object v0, p0, Lcom/android/settings/VirusScanService;->wu:Lcom/android/settings/aV;

    .line 48
    iput-boolean v1, p0, Lcom/android/settings/VirusScanService;->wz:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/settings/VirusScanService;->wA:Z

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/android/settings/VirusScanService;Lcom/android/settings/aj;)Lcom/android/settings/aj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/VirusScanService;->wv:Lcom/android/settings/aj;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->ws:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/VirusScanService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings/VirusScanService;->wz:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/VirusScanService;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/settings/VirusScanService;->wz:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/VirusScanService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings/VirusScanService;->wA:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->eh()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->wy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->wy:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->wy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->wy:I

    return v0
.end method

.method private eh()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 164
    sget-boolean v0, Lcom/android/settings/VirusScanService;->cM:Z

    if-eqz v0, :cond_1

    .line 165
    iput v5, p0, Lcom/android/settings/VirusScanService;->wx:I

    .line 166
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->ws:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dM;

    .line 167
    iget-object v2, v0, Lcom/android/settings/dM;->cU:Lcom/android/settings/ScanState;

    sget-object v3, Lcom/android/settings/ScanState;->bJ:Lcom/android/settings/ScanState;

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/settings/dM;->mChecked:Z

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/VirusScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settings/dM;->mPackageName:Ljava/lang/String;

    new-instance v3, Lcom/android/settings/F;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/F;-><init>(Lcom/android/settings/VirusScanService;Lcom/android/settings/ak;)V

    invoke-virtual {v2, v0, v3, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method private ei()V
    .locals 2

    .prologue
    .line 176
    sget-boolean v0, Lcom/android/settings/VirusScanService;->cM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/VirusScanService;->wz:Z

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/VirusScanService;->cM:Z

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/VirusScanService;->wz:Z

    .line 179
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/ak;

    invoke-direct {v1, p0}, Lcom/android/settings/ak;-><init>(Lcom/android/settings/VirusScanService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->ei()V

    return-void
.end method

.method static synthetic g(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->ww:I

    return v0
.end method

.method private gy()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/VirusScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    move v1, v0

    .line 266
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 267
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 268
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 269
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 270
    new-instance v4, Lcom/android/settings/dM;

    invoke-direct {v4}, Lcom/android/settings/dM;-><init>()V

    .line 271
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/settings/dM;->mPackageName:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/VirusScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/dM;->cT:Ljava/lang/String;

    .line 273
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/settings/dM;->LC:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->ws:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 277
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->wt:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->wx:I

    return v0
.end method

.method public static isStarted()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/settings/VirusScanService;->cM:Z

    return v0
.end method

.method static synthetic j(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->wy:I

    return v0
.end method

.method static synthetic k(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->wx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->wx:I

    return v0
.end method

.method static synthetic l(Lcom/android/settings/VirusScanService;)Lcom/android/settings/aj;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->wv:Lcom/android/settings/aj;

    return-object v0
.end method

.method static synthetic m(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->ww:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->ww:I

    return v0
.end method

.method static synthetic n(Lcom/android/settings/VirusScanService;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/settings/VirusScanService;->wA:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->wu:Lcom/android/settings/aV;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->gy()V

    .line 250
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/VirusScanService;->cM:Z

    .line 262
    return-void
.end method
