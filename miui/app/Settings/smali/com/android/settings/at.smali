.class Lcom/android/settings/at;
.super Ljava/lang/Object;
.source "AccessControlFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic iK:Landroid/preference/CheckBoxPreference;

.field final synthetic iL:Lcom/android/settings/AccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlFragment;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/at;->iL:Lcom/android/settings/AccessControlFragment;

    iput-object p2, p0, Lcom/android/settings/at;->iK:Landroid/preference/CheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 58
    iget-object v0, p0, Lcom/android/settings/at;->iL:Lcom/android/settings/AccessControlFragment;

    invoke-static {v0}, Lcom/android/settings/AccessControlFragment;->a(Lcom/android/settings/AccessControlFragment;)Lmiui/security/ChooseLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/at;->iK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    return-void
.end method
