.class public Lcom/android/settings/UsageStats;
.super Lcom/android/settings/J;
.source "UsageStats.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private Gn:Landroid/widget/Spinner;

.field private Go:Lcom/android/settings/dT;

.field private bf:Lcom/android/internal/app/IUsageStats;

.field private bh:Landroid/content/pm/PackageManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/android/settings/UsageStats;)Lcom/android/internal/app/IUsageStats;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/UsageStats;->bf:Lcom/android/internal/app/IUsageStats;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/UsageStats;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/UsageStats;->bh:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/UsageStats;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/UsageStats;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 225
    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageStats;->bf:Lcom/android/internal/app/IUsageStats;

    .line 226
    iget-object v0, p0, Lcom/android/settings/UsageStats;->bf:Lcom/android/internal/app/IUsageStats;

    if-nez v0, :cond_0

    .line 227
    const-string v0, "UsageStatsActivity"

    const-string v1, "Failed to retrieve usagestats service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStats;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/UsageStats;->mInflater:Landroid/view/LayoutInflater;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/UsageStats;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageStats;->bh:Landroid/content/pm/PackageManager;

    .line 233
    const v0, 0x7f04007e

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStats;->setContentView(I)V

    .line 234
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/UsageStats;->Gn:Landroid/widget/Spinner;

    .line 235
    iget-object v0, p0, Lcom/android/settings/UsageStats;->Gn:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 237
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/UsageStats;->mListView:Landroid/widget/ListView;

    .line 240
    new-instance v0, Lcom/android/settings/dT;

    invoke-direct {v0, p0}, Lcom/android/settings/dT;-><init>(Lcom/android/settings/UsageStats;)V

    iput-object v0, p0, Lcom/android/settings/UsageStats;->Go:Lcom/android/settings/dT;

    .line 241
    iget-object v0, p0, Lcom/android/settings/UsageStats;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/UsageStats;->Go:Lcom/android/settings/dT;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/UsageStats;->Go:Lcom/android/settings/dT;

    invoke-virtual {v0, p3}, Lcom/android/settings/dT;->bb(I)V

    .line 247
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    return-void
.end method
