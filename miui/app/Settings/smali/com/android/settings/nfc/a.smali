.class public Lcom/android/settings/nfc/a;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final aM:Landroid/content/IntentFilter;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final sn:Landroid/preference/CheckBoxPreference;

.field private final so:Landroid/preference/PreferenceScreen;

.field private final sp:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settings/nfc/b;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/b;-><init>(Lcom/android/settings/nfc/a;)V

    iput-object v0, p0, Lcom/android/settings/nfc/a;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/android/settings/nfc/a;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    .line 57
    iput-object p3, p0, Lcom/android/settings/nfc/a;->so:Landroid/preference/PreferenceScreen;

    .line 58
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/a;->sp:Landroid/nfc/NfcAdapter;

    .line 60
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sp:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/nfc/a;->so:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/a;->aM:Landroid/content/IntentFilter;

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/a;->aM:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/nfc/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/a;->ab(I)V

    return-void
.end method

.method private ab(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    packed-switch p1, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/nfc/a;->so:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/nfc/a;->so:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/nfc/a;->so:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sp:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/nfc/a;->so:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b01ae

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/a;->so:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/nfc/a;->so:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 126
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/nfc/a;->so:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 93
    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sp:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 99
    :goto_0
    return v2

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sp:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sp:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/a;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sp:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sp:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/a;->ab(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/nfc/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/a;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/a;->aM:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/android/settings/nfc/a;->sn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
