.class Lcom/android/settings/inputmethod/InputMethodPreference$3;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic IG:Lcom/android/settings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->IG:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->IG:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->c(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->IG:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->d(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME\'s Settings Activity Not Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->IG:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->c(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v0

    const v1, 0x7f0b0434

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->IG:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-static {v4}, Lcom/android/settings/inputmethod/InputMethodPreference;->b(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->IG:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodPreference;->c(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->IG:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->c(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
