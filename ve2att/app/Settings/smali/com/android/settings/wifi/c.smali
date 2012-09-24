.class Lcom/android/settings/wifi/c;
.super Ljava/lang/Object;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field final synthetic at:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/settings/wifi/c;->at:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .parameter

    .prologue
    .line 604
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 601
    return-void
.end method
