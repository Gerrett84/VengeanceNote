.class public Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FC:Ljava/util/EnumMap;


# instance fields
.field private Cl:Landroid/view/inputmethod/InputMethodManager;

.field private FD:Lcom/android/settings/wifi/WifiSettings;

.field private FE:Landroid/view/View;

.field private FF:Landroid/view/View;

.field private FG:Ljava/lang/CharSequence;

.field private FH:Ljava/lang/CharSequence;

.field private FI:Landroid/view/View;

.field private FJ:Landroid/view/View;

.field private FK:Landroid/widget/Button;

.field private FL:Landroid/widget/Button;

.field private FM:Landroid/widget/Button;

.field private FN:Landroid/widget/Button;

.field private FO:Landroid/widget/Button;

.field private FP:Landroid/view/View;

.field private FQ:Landroid/view/View;

.field private FR:Landroid/widget/TextView;

.field private FS:I

.field private FT:Lcom/android/settings/wifi/E;

.field private FU:Landroid/net/NetworkInfo$DetailedState;

.field private c:Landroid/net/wifi/WifiManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private pC:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    .line 63
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

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

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    .line 136
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FU:Landroid/net/NetworkInfo$DetailedState;

    .line 204
    return-void
.end method

.method private aa(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 317
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ij()V

    .line 318
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FD:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->iR()I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FP:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FJ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 325
    return-void
.end method

.method private ac(Z)V
    .locals 1
    .parameter

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ic()V

    .line 683
    if-eqz p1, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FD:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->iP()V

    .line 688
    return-void
.end method

.method private hS()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hW()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aE(I)V

    .line 231
    return-void
.end method

.method private hT()V
    .locals 3

    .prologue
    .line 264
    const-string v0, "SetupWizard"

    const-string v1, "Hiding software keyboard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Cl:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 269
    :cond_0
    return-void
.end method

.method private hU()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->pC:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FH:Ljava/lang/CharSequence;

    .line 333
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hZ()V

    .line 334
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->il()V

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aE(I)V

    .line 337
    return-void
.end method

.method private hV()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 343
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    .line 345
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hT()V

    .line 346
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aE(I)V

    .line 348
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ia()V

    .line 349
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->im()V

    .line 351
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FP:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FQ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FR:Landroid/widget/TextView;

    const v1, 0x7f0b052b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    const v1, 0x7f0b051a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 362
    return-void
.end method

.method private hW()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->pC:Landroid/widget/TextView;

    const v1, 0x7f0b0510

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method private hX()V
    .locals 2

    .prologue
    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->pC:Landroid/widget/TextView;

    const v1, 0x7f0b0514

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 371
    return-void
.end method

.method private hY()V
    .locals 5

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v0}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v0}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/N;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v0}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/N;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    .line 383
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->pC:Landroid/widget/TextView;

    const v1, 0x7f0b0511

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    return-void

    .line 379
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hZ()V
    .locals 5

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v0}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v0}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/N;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v0}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/N;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    .line 396
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->pC:Landroid/widget/TextView;

    const v1, 0x7f0b0512

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    return-void

    .line 392
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ia()V
    .locals 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v0}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v0}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/N;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v0}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/N;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    .line 409
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->pC:Landroid/widget/TextView;

    const v1, 0x7f0b0513

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    return-void

    .line 405
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ib()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 420
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FI:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FJ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    return-void
.end method

.method private ic()V
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aE(I)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FP:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ik()V

    .line 429
    return-void
.end method

.method private id()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FD:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->iQ()V

    .line 433
    return-void
.end method

.method private ie()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    const v1, 0x7f0b051a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 553
    return-void
.end method

.method private if()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 556
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    return-void
.end method

.method private ih()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 594
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    if-eq v0, v9, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 595
    :cond_0
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed after connect action."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iput v6, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    .line 600
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hS()V

    .line 602
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 603
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ab(Z)V

    .line 607
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ic()V

    .line 611
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 612
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 614
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

    .line 617
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FP:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 621
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ac(Z)V

    .line 636
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aE(I)V

    .line 637
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FQ:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 638
    const v0, 0x7f0801d4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 639
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 640
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    .line 642
    return-void

    .line 623
    :cond_2
    iput v6, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    .line 624
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FD:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->iT()V

    .line 626
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hS()V

    .line 628
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 631
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ij()V

    .line 632
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FP:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FJ:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private ii()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 706
    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    .line 708
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 712
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FH:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->pC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FH:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    :goto_0
    const v0, 0x7f0801d4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 720
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FQ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 723
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ij()V

    .line 724
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aE(I)V

    .line 725
    return-void

    .line 715
    :cond_0
    const-string v0, "SetupWizard"

    const-string v1, "Title during editing/adding a network was empty."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hY()V

    goto :goto_0
.end method

.method private ij()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 736
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    if-nez v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FI:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 746
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 743
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 744
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FI:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private ik()V
    .locals 2

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ib()V

    .line 753
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 754
    return-void
.end method

.method private il()V
    .locals 2

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ib()V

    .line 761
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 762
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 763
    return-void
.end method

.method private im()V
    .locals 2

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ib()V

    .line 767
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 768
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 769
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const v1, 0x7f08005b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 166
    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 168
    :cond_0
    const-string v1, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 171
    :cond_1
    const-string v1, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 175
    :cond_2
    const v0, 0x7f0801cd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->pC:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0801ce

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 178
    const v0, 0x7f0801cf

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FI:Landroid/view/View;

    .line 179
    const v0, 0x7f0801d8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FJ:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FI:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    const v0, 0x7f0801da

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v0, 0x7f0801de

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f0801dd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v0, 0x7f0801dc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v0, 0x7f0801cc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FE:Landroid/view/View;

    .line 197
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FF:Landroid/view/View;

    .line 199
    const v0, 0x7f0801d2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FP:Landroid/view/View;

    .line 200
    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FQ:Landroid/view/View;

    .line 201
    const v0, 0x7f0801d6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FR:Landroid/widget/TextView;

    .line 202
    return-void
.end method


# virtual methods
.method a(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 664
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 665
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ij()V

    .line 666
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FP:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FJ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 674
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 675
    const v2, 0x7f040022

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/AccessPoint;->setLayoutResource(I)V

    .line 676
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 678
    :cond_2
    return-void
.end method

.method a(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 443
    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    .line 445
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->me:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->me:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    move p2, v0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FD:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->iS()V

    .line 457
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FP:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FQ:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 459
    const v0, 0x7f0801d4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 460
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 461
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 462
    new-instance v1, Lcom/android/settings/wifi/E;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/settings/wifi/E;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;Landroid/view/ViewGroup;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    .line 464
    if-nez p1, :cond_2

    .line 465
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hX()V

    .line 466
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 468
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ij()V

    .line 469
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->if()V

    .line 492
    :goto_0
    return-void

    .line 470
    :cond_2
    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->me:I

    if-nez v0, :cond_3

    .line 471
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    .line 474
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 476
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FG:Ljava/lang/CharSequence;

    .line 477
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hY()V

    .line 478
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ij()V

    .line 479
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->if()V

    .line 480
    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->me:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 481
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ie()V

    goto :goto_0

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    const v1, 0x7f0b01f8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    const v1, 0x7f0b051f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method aE(I)V
    .locals 1
    .parameter

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FE:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FF:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    return-void
.end method

.method ab(Z)V
    .locals 2
    .parameter

    .prologue
    .line 648
    if-eqz p1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    const v1, 0x7f0b0519

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    const v1, 0x7f0b0518

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method b(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter

    .prologue
    .line 273
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FC:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    .line 275
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 278
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ac(Z)V

    .line 281
    :cond_0
    sget-object v1, Lcom/android/settings/wifi/c;->ay:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 307
    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FD:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->iR()I

    move-result v1

    if-lez v1, :cond_1

    .line 309
    invoke-static {p0, v0}, Lcom/android/settings/wifi/L;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aa(Ljava/lang/String;)V

    .line 313
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FU:Landroid/net/NetworkInfo$DetailedState;

    .line 314
    return-void

    .line 283
    :pswitch_0
    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    if-nez v1, :cond_3

    .line 284
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FD:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->iR()I

    move-result v1

    if-nez v1, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ic()V

    goto :goto_0

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ij()V

    .line 288
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FP:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FJ:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 292
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ij()V

    goto :goto_0

    .line 297
    :pswitch_1
    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hU()V

    goto :goto_0

    .line 303
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hV()V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method c(Landroid/view/View;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0801af

    const v4, 0x7f0801ae

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 506
    const v2, 0x7f0801b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 507
    const v2, 0x7f0801b2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 509
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aE(I)V

    .line 511
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hT()V

    .line 516
    const v1, 0x7f0801b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 517
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :goto_0
    const v1, 0x7f080197

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 523
    const v1, 0x7f0801b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 524
    const v1, 0x7f0801b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 525
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ie()V

    .line 547
    :goto_1
    return v0

    .line 520
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aE(I)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    if-eqz v0, :cond_3

    .line 538
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    const v2, 0x7f08017b

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/E;->aF(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 547
    goto :goto_1

    .line 542
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    const v2, 0x7f08018e

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/E;->aF(I)V

    goto :goto_2
.end method

.method d(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 777
    return-void
.end method

.method h(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 695
    const-string v0, "supplicantError"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 696
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 697
    const-string v0, "SetupWizard"

    const-string v1, "Received authentication error event."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ii()V

    .line 700
    :cond_0
    return-void
.end method

.method ig()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 564
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FS:I

    .line 566
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FD:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FT:Lcom/android/settings/wifi/E;

    invoke-virtual {v1}, Lcom/android/settings/wifi/E;->ej()Lcom/android/settings/wifi/N;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/N;)V

    .line 574
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hU()V

    .line 577
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    const v1, 0x7f0b051a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 580
    const v0, 0x7f0801d4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 581
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FQ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FR:Landroid/widget/TextView;

    const v1, 0x7f0b052a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 585
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 587
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 590
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 235
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hT()V

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FK:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 237
    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->id()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FL:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 240
    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ac(Z)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FM:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 243
    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const v0, 0x7f0b0518

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 249
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    .line 253
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_0

    .line 251
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_1

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FO:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 255
    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ig()V

    goto :goto_0

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FN:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 258
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ih()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    .line 142
    const v0, 0x7f040089

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    .line 144
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settings/wifi/O;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/O;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;Lcom/android/settings/wifi/c;)V

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0801d3

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->FD:Lcom/android/settings/wifi/WifiSettings;

    .line 152
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->Cl:Landroid/view/inputmethod/InputMethodManager;

    .line 154
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->ic()V

    .line 159
    return-void
.end method
