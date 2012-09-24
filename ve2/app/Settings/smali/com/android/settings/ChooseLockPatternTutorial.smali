.class public Lcom/android/settings/ChooseLockPatternTutorial;
.super Lmiui/preference/BasePreferenceActivity;
.source "ChooseLockPatternTutorial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 48
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f0b034e

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
