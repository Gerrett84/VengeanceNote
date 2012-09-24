.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodAndLanguageSettings.java"


# instance fields
.field final synthetic qr:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 592
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->qr:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    .line 593
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 594
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 595
    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 597
    const-string v1, "selected_input_method_subtype"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 599
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->qr:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->a(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V

    .line 603
    return-void
.end method
