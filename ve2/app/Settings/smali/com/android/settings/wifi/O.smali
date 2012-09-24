.class Lcom/android/settings/wifi/O;
.super Landroid/os/Handler;
.source "WifiSettingsForSetupWizardXL.java"


# instance fields
.field final synthetic JE:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/wifi/O;->JE:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;Lcom/android/settings/wifi/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/O;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "SetupWizard"

    const-string v1, "Failed to establish AsyncChannel connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_0
    .end packed-switch
.end method
