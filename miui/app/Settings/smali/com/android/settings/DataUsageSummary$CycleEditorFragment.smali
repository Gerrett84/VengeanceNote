.class public Lcom/android/settings/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1691
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static w(Lcom/android/settings/DataUsageSummary;)V
    .locals 3
    .parameter

    .prologue
    .line 1695
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1704
    :goto_0
    return-void

    .line 1697
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1698
    const-string v1, "template"

    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->u(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1700
    new-instance v1, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 1701
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1702
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1703
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "cycleEditor"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 1708
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1709
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/DataUsageSummary;

    .line 1710
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->v(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/i;

    move-result-object v3

    .line 1712
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1713
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1715
    const v1, 0x7f040024

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1716
    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 1718
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "template"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1719
    invoke-virtual {v3, v4}, Lcom/android/settings/a/i;->d(Landroid/net/NetworkTemplate;)I

    move-result v1

    .line 1721
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1722
    const/16 v7, 0x1f

    invoke-virtual {v2, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1723
    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1724
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1726
    const v1, 0x7f0b0603

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1727
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1729
    const v7, 0x7f0b0605

    new-instance v0, Lcom/android/settings/aW;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/aW;-><init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/a/i;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1740
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
