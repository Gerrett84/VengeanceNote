.class public Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1810
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static w(Lcom/android/settings/DataUsageSummary;)V
    .locals 3
    .parameter

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1823
    :goto_0
    return-void

    .line 1816
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1817
    const-string v1, "template"

    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->u(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1819
    new-instance v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;-><init>()V

    .line 1820
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1821
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1822
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "limitEditor"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1828
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/DataUsageSummary;

    .line 1829
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->v(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/i;

    move-result-object v3

    .line 1831
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1832
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1834
    const v1, 0x7f040022

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1835
    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 1837
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "template"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1838
    invoke-virtual {v3, v4}, Lcom/android/settings/a/i;->e(Landroid/net/NetworkTemplate;)J

    move-result-wide v7

    .line 1839
    invoke-virtual {v3, v4}, Lcom/android/settings/a/i;->f(Landroid/net/NetworkTemplate;)J

    move-result-wide v9

    .line 1841
    const v1, 0x7fffffff

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1842
    const-wide/16 v11, -0x1

    cmp-long v1, v7, v11

    if-eqz v1, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-lez v1, :cond_0

    .line 1843
    const-wide/32 v11, 0x100000

    div-long/2addr v7, v11

    long-to-int v1, v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1847
    :goto_0
    const-wide/32 v7, 0x100000

    div-long v7, v9, v7

    long-to-int v1, v7

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1848
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1850
    const v1, 0x7f0b0607

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1851
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1853
    const v7, 0x7f0b0605

    new-instance v0, Lcom/android/settings/cn;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cn;-><init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/a/i;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1866
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1845
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_0
.end method
