.class abstract Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private AA:Ljava/lang/CharSequence;

.field private AB:Ljava/lang/CharSequence;

.field private AC:Ljava/lang/CharSequence;

.field private AD:Landroid/preference/Preference;

.field private AE:Ljava/lang/CharSequence;

.field private AF:I

.field private AG:Ljava/lang/CharSequence;

.field private Ax:Ljava/lang/String;

.field private Ay:Lcom/android/settings/S;

.field private Az:Ljava/lang/CharSequence;

.field private ff:Landroid/content/Intent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AA:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ax:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AC:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private gY()V
    .locals 2

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->e(Landroid/app/Activity;)Lcom/android/settings/S;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ay:Lcom/android/settings/S;

    .line 849
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ay:Lcom/android/settings/S;

    new-instance v1, Lcom/android/settings/aI;

    invoke-direct {v1, p0}, Lcom/android/settings/aI;-><init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/S;->a(Lcom/android/settings/cB;)V

    .line 872
    return-void
.end method

.method private gZ()V
    .locals 5

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 878
    const-string v0, "preference_key"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ax:Ljava/lang/String;

    .line 881
    const-string v0, "checked"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 882
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ay:Lcom/android/settings/S;

    invoke-virtual {v2, v0}, Lcom/android/settings/S;->n(Z)V

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 886
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AG:Ljava/lang/CharSequence;

    .line 888
    const-string v0, "title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 893
    :cond_1
    const-string v0, "summary"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AD:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 897
    const-string v0, "settings_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    const-string v2, "settings_component_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 900
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 903
    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AE:Ljava/lang/CharSequence;

    .line 904
    iput-object v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->ff:Landroid/content/Intent;

    .line 905
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 910
    :cond_2
    const-string v0, "enable_warning_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Az:Ljava/lang/CharSequence;

    .line 914
    const-string v0, "enable_warning_message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AA:Ljava/lang/CharSequence;

    .line 918
    const-string v0, "disable_warning_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AB:Ljava/lang/CharSequence;

    .line 922
    const-string v0, "disable_warning_message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AC:Ljava/lang/CharSequence;

    .line 924
    return-void
.end method


# virtual methods
.method public abstract c(Ljava/lang/String;Z)V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 829
    packed-switch p2, :pswitch_data_0

    .line 843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 831
    :pswitch_0
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AF:I

    if-ne v2, v0, :cond_0

    .line 832
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ay:Lcom/android/settings/S;

    invoke-virtual {v1, v0}, Lcom/android/settings/S;->n(Z)V

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 834
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ax:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->c(Ljava/lang/String;Z)V

    .line 845
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 831
    goto :goto_0

    .line 837
    :pswitch_1
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AF:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 838
    :goto_2
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ay:Lcom/android/settings/S;

    invoke-virtual {v1, v0}, Lcom/android/settings/S;->n(Z)V

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 840
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ax:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->c(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 837
    goto :goto_2

    .line 829
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 735
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 739
    new-instance v1, Lcom/android/settings/aJ;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/aJ;-><init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AD:Landroid/preference/Preference;

    .line 763
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AD:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 764
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AD:Landroid/preference/Preference;

    const v2, 0x7f040071

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 765
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AD:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 766
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 800
    .line 802
    packed-switch p1, :pswitch_data_0

    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 804
    :pswitch_0
    iput v4, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AF:I

    .line 805
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Az:Ljava/lang/CharSequence;

    .line 806
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AA:Ljava/lang/CharSequence;

    .line 816
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 809
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AF:I

    .line 810
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AB:Ljava/lang/CharSequence;

    .line 811
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AC:Ljava/lang/CharSequence;

    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 791
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 792
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AE:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 793
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 794
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->ff:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 795
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 780
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AG:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->AG:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->Ay:Lcom/android/settings/S;

    invoke-virtual {v0, v2}, Lcom/android/settings/S;->a(Lcom/android/settings/cB;)V

    .line 784
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 785
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 770
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 771
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->gY()V

    .line 772
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->gZ()V

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 775
    return-void
.end method
