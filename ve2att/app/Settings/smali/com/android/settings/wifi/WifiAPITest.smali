.class public Lcom/android/settings/wifi/WifiAPITest;
.super Lmiui/preference/BasePreferenceActivity;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private CF:I

.field private CG:Landroid/preference/Preference;

.field private CH:Landroid/preference/Preference;

.field private CI:Landroid/preference/Preference;

.field private c:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiAPITest;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/wifi/WifiAPITest;->CF:I

    return v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiAPITest;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings/wifi/WifiAPITest;->CF:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->c:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private iv()V
    .locals 2

    .prologue
    .line 77
    const v0, 0x7f040090

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPITest;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 81
    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->CG:Landroid/preference/Preference;

    .line 82
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->CG:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    const-string v1, "disable_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->CH:Landroid/preference/Preference;

    .line 85
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->CH:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string v1, "enable_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->CI:Landroid/preference/Preference;

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->CI:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAPITest;->iv()V

    .line 72
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPITest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->c:Landroid/net/wifi/WifiManager;

    .line 73
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->CG:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 149
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->CH:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    const-string v1, "Input"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    const-string v1, "Enter Network ID"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 115
    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/R;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/R;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const-string v1, "Cancel"

    new-instance v2, Lcom/android/settings/wifi/Q;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/Q;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->CI:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    const-string v1, "Input"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    const-string v1, "Enter Network ID"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 133
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 135
    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/P;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/P;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    const-string v1, "Cancel"

    new-instance v2, Lcom/android/settings/wifi/O;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/O;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 99
    const/4 v0, 0x0

    return v0
.end method
