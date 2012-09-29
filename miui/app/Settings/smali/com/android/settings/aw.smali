.class Lcom/android/settings/aw;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettingsSetupWizard.java"


# instance fields
.field final synthetic ju:Lcom/android/settings/DateTimeSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettingsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/settings/aw;->ju:Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings/aw;->ju:Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-static {v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->a(Lcom/android/settings/DateTimeSettingsSetupWizard;)V

    .line 331
    return-void
.end method
