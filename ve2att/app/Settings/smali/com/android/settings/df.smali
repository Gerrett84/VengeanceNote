.class Lcom/android/settings/df;
.super Landroid/webkit/WebViewClient;
.source "SettingsSafetyLegalActivity.java"


# instance fields
.field final synthetic Ik:Lcom/android/settings/SettingsSafetyLegalActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsSafetyLegalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/df;->Ik:Lcom/android/settings/SettingsSafetyLegalActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/df;->Ik:Lcom/android/settings/SettingsSafetyLegalActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsSafetyLegalActivity;->a(Lcom/android/settings/SettingsSafetyLegalActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/df;->Ik:Lcom/android/settings/SettingsSafetyLegalActivity;

    const v2, 0x7f0b036e

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsSafetyLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/df;->Ik:Lcom/android/settings/SettingsSafetyLegalActivity;

    invoke-static {v0, p4}, Lcom/android/settings/SettingsSafetyLegalActivity;->a(Lcom/android/settings/SettingsSafetyLegalActivity;Ljava/lang/String;)V

    .line 79
    return-void
.end method
