.class Lcom/android/settings/cT;
.super Landroid/os/Handler;
.source "SettingsLicenseActivity.java"


# instance fields
.field final synthetic Gg:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/cT;->Gg:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/android/settings/cT;->Gg:Lcom/android/settings/SettingsLicenseActivity;

    invoke-static {v1, v0}, Lcom/android/settings/SettingsLicenseActivity;->a(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cT;->Gg:Lcom/android/settings/SettingsLicenseActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->a(Lcom/android/settings/SettingsLicenseActivity;)V

    goto :goto_0
.end method
