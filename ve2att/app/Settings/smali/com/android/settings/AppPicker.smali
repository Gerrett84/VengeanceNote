.class public Lcom/android/settings/AppPicker;
.super Landroid/app/ListActivity;
.source "AppPicker.java"


# static fields
.field private static final uD:Ljava/util/Comparator;


# instance fields
.field private uC:Lcom/android/settings/co;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/android/settings/u;

    invoke-direct {v0}, Lcom/android/settings/u;-><init>()V

    sput-object v0, Lcom/android/settings/AppPicker;->uD:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic fG()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/settings/AppPicker;->uD:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lcom/android/settings/co;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/co;-><init>(Lcom/android/settings/AppPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AppPicker;->uC:Lcom/android/settings/co;

    .line 51
    iget-object v0, p0, Lcom/android/settings/AppPicker;->uC:Lcom/android/settings/co;

    invoke-virtual {v0}, Lcom/android/settings/co;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/AppPicker;->finish()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AppPicker;->uC:Lcom/android/settings/co;

    invoke-virtual {p0, v0}, Lcom/android/settings/AppPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/AppPicker;->uC:Lcom/android/settings/co;

    invoke-virtual {v0, p3}, Lcom/android/settings/co;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aN;

    .line 71
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    iget-object v2, v0, Lcom/android/settings/aN;->hM:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/settings/aN;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AppPicker;->setResult(ILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/AppPicker;->finish()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 61
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 66
    return-void
.end method
