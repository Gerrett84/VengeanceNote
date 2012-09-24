.class public Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final Jf:Ljava/util/EnumMap;


# instance fields
.field private Gd:Landroid/view/inputmethod/InputMethodManager;

.field private Ib:Landroid/net/wifi/WifiManager$Channel;

.field private Jg:Lcom/android/settings/wifi/WifiSettings;

.field private Jh:Landroid/view/View;

.field private Ji:Landroid/view/View;

.field private Jj:Ljava/lang/CharSequence;

.field private Jk:Ljava/lang/CharSequence;

.field private Jl:Landroid/view/View;

.field private Jm:Landroid/view/View;

.field private Jn:Landroid/widget/Button;

.field private Jo:Landroid/widget/Button;

.field private Jp:Landroid/widget/Button;

.field private Jq:Landroid/widget/Button;

.field private Jr:Landroid/widget/Button;

.field private Js:Landroid/view/View;

.field private Jt:Landroid/view/View;

.field private Ju:Landroid/widget/TextView;

.field private Jv:I

.field private Jw:Lcom/android/settings/wifi/N;

.field private Jx:Landroid/net/NetworkInfo$DetailedState;

.field private c:Landroid/net/wifi/WifiManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private rP:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    .line 63
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jf:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jj:Ljava/lang/CharSequence;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jv:I

    .line 137
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jx:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method private Y(Z)V
    .locals 1
    .parameter

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kt()V

    .line 671
    if-eqz p1, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jg:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->lo()V

    .line 676
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 167
    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 169
    :cond_0
    const-string v1, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 172
    :cond_1
    const-string v1, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 176
    :cond_2
    const v0, 0x7f0801e9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->rP:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0801ea

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 179
    const v0, 0x7f0801eb

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jl:Landroid/view/View;

    .line 180
    const v0, 0x7f0801f5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jm:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jn:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f0801fb

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jo:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f0801f9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jr:Landroid/widget/Button;

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jr:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v0, 0x7f0801f8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jq:Landroid/widget/Button;

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jq:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v0, 0x7f0801e8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jh:Landroid/view/View;

    .line 198
    const v0, 0x7f0801ee

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Ji:Landroid/view/View;

    .line 200
    const v0, 0x7f0801ef

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Js:Landroid/view/View;

    .line 201
    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jt:Landroid/view/View;

    .line 202
    const v0, 0x7f0801f3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Ju:Landroid/widget/TextView;

    .line 203
    return-void
.end method

.method private kA()V
    .locals 2

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ks()V

    .line 749
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 751
    return-void
.end method

.method private kn()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kq()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jo:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jr:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jq:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aQ(I)V

    .line 213
    return-void
.end method

.method private ko()V
    .locals 3

    .prologue
    .line 246
    const-string v0, "SetupWizard"

    const-string v1, "Hiding software keyboard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Gd:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 251
    :cond_0
    return-void
.end method

.method private kp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jv:I

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jq:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->rP:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jk:Ljava/lang/CharSequence;

    .line 315
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kr()V

    .line 316
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kA()V

    .line 318
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aQ(I)V

    .line 319
    return-void
.end method

.method private kq()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->rP:Landroid/widget/TextView;

    const v1, 0x7f0b055b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method

.method private kr()V
    .locals 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jj:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jw:Lcom/android/settings/wifi/N;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jw:Lcom/android/settings/wifi/N;

    invoke-virtual {v0}, Lcom/android/settings/wifi/N;->fh()Lcom/android/settings/wifi/W;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jw:Lcom/android/settings/wifi/N;

    invoke-virtual {v0}, Lcom/android/settings/wifi/N;->fh()Lcom/android/settings/wifi/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/W;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jw:Lcom/android/settings/wifi/N;

    invoke-virtual {v0}, Lcom/android/settings/wifi/N;->fh()Lcom/android/settings/wifi/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/W;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jj:Ljava/lang/CharSequence;

    .line 378
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->rP:Landroid/widget/TextView;

    const v1, 0x7f0b055d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jj:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void

    .line 374
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ks()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 402
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jm:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    return-void
.end method

.method private kt()V
    .locals 2

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aQ(I)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Js:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kz()V

    .line 411
    return-void
.end method

.method private ku()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jg:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->lp()V

    .line 415
    return-void
.end method

.method private kv()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jr:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jq:Landroid/widget/Button;

    const v1, 0x7f0b0565

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 535
    return-void
.end method

.method private kx()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 576
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jv:I

    if-eq v0, v9, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jv:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 577
    :cond_0
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed after connect action."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iput v6, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jv:I

    .line 582
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kn()V

    .line 584
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 585
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->X(Z)V

    .line 589
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kt()V

    .line 593
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 594
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 596
    const-string v2, "SetupWizard"

    const-string v3, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v6

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Ib:Landroid/net/wifi/WifiManager$Channel;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v4, Lcom/android/settings/wifi/c;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/c;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Js:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 609
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Y(Z)V

    .line 624
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aQ(I)V

    .line 625
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jt:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 626
    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 627
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 628
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jw:Lcom/android/settings/wifi/N;

    .line 630
    return-void

    .line 611
    :cond_2
    iput v6, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jv:I

    .line 612
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jg:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->lq()V

    .line 614
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kn()V

    .line 616
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jo:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 618
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 619
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ky()V

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Js:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jm:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private ky()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 724
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jv:I

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 731
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 732
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private kz()V
    .locals 2

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ks()V

    .line 741
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 742
    return-void
.end method


# virtual methods
.method X(Z)V
    .locals 2
    .parameter

    .prologue
    .line 636
    if-eqz p1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    const v1, 0x7f0b0564

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    const v1, 0x7f0b0563

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method aQ(I)V
    .locals 1
    .parameter

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jh:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Ji:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    return-void
.end method

.method c(Landroid/view/View;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0801b8

    const v4, 0x7f0801b7

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 487
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    const v2, 0x7f0801ba

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 489
    const v2, 0x7f0801bb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 491
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 492
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aQ(I)V

    .line 493
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ko()V

    .line 498
    const v1, 0x7f0801b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 499
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :goto_0
    const v1, 0x7f0801bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    const v1, 0x7f0801ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 506
    const v1, 0x7f0801bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 507
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kv()V

    .line 529
    :goto_1
    return v0

    .line 502
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jr:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 514
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aQ(I)V

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jw:Lcom/android/settings/wifi/N;

    if-eqz v0, :cond_3

    .line 520
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jw:Lcom/android/settings/wifi/N;

    const v2, 0x7f08019f

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/N;->aR(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 529
    goto :goto_1

    .line 524
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jw:Lcom/android/settings/wifi/N;

    const v2, 0x7f0801b2

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/N;->aR(I)V

    goto :goto_2
.end method

.method kw()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 546
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jv:I

    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jg:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jw:Lcom/android/settings/wifi/N;

    invoke-virtual {v1}, Lcom/android/settings/wifi/N;->fh()Lcom/android/settings/wifi/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/W;)V

    .line 556
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kp()V

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jq:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jq:Landroid/widget/Button;

    const v1, 0x7f0b0565

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 562
    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 563
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Ju:Landroid/widget/TextView;

    const v1, 0x7f0b0575

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 567
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 569
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jr:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jo:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 572
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 217
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ko()V

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jn:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 219
    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ku()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jo:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 222
    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Y(Z)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jp:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 225
    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const v0, 0x7f0b0563

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 231
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    .line 235
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_0

    .line 233
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_1

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jr:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 237
    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kw()V

    goto :goto_0

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jq:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 240
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kx()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    .line 143
    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    .line 145
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Ib:Landroid/net/wifi/WifiManager$Channel;

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0801f0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Jg:Lcom/android/settings/wifi/WifiSettings;

    .line 153
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Gd:Landroid/view/inputmethod/InputMethodManager;

    .line 155
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->kt()V

    .line 160
    return-void
.end method
